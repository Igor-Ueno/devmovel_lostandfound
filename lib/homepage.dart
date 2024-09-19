import 'package:devmovel_lostandfound/account_page.dart';
import 'package:devmovel_lostandfound/lost_items_screen.dart';
import 'package:devmovel_lostandfound/create_post_page.dart';
import 'package:devmovel_lostandfound/search_post_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'generated/l10n.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageOptions = [
    LostItemsScreen(),  
    SearchScreen(),
    CreatePostPage(),
    AccountPage()
  ];

  int currentPageIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  Future<void> signOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
    await prefs.remove('ra');
    await prefs.remove('name');
    await prefs.remove('email');
    await prefs.remove('phoneNumber');
    await prefs.remove('photoUrl');
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(S.of(context).homePageTitle), // Usando a string localizada
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
        destinations: <Widget>[
          NavigationDestination(
            icon: const Icon(Icons.list),
            label: S.of(context).allPosts, // Usando a string localizada
          ),
          NavigationDestination(
            icon: const Icon(Icons.search),
            label: S.of(context).searchPost, // Usando a string localizada
          ),
          NavigationDestination(
            icon: const Icon(Icons.note_add),
            label: S.of(context).createPost, // Usando a string localizada
          ),
          NavigationDestination(
            icon: const Icon(Icons.account_circle),
            label: S.of(context).account, // Usando a string localizada
          ),
        ],
      ),
    );
  }
}
