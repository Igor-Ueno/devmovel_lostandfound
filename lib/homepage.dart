import 'package:devmovel_lostandfound/account_page.dart';
import 'package:devmovel_lostandfound/lost_items_screen.dart'; 
import 'package:devmovel_lostandfound/create_post_page.dart';
import 'package:devmovel_lostandfound/search_post_page.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageOptions = [
    LostItemsScreen(),  
    SearchScreen(),
    CreatePostPagePage(),
    AccountPage()
  ];

  int currentPageIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  void signOut() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
        // title: Text(widget.title),
        // automaticallyImplyLeading: false
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => signOut(),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.surface,
        child: const Icon(Icons.logout_rounded),
      ),
      body: _pageOptions[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: currentPageIndex,
        onDestinationSelected: onItemTapped,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.list),
            label: 'All posts',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search posts',
          ),
          NavigationDestination(
            icon: Icon(Icons.note_add),
            label: 'Create post',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}