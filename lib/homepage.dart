import 'package:devmovel_lostandfound/account_page.dart';
import 'package:devmovel_lostandfound/all_posts_page.dart';
import 'package:devmovel_lostandfound/create_post_page.dart';
import 'package:devmovel_lostandfound/register_page.dart';
import 'package:devmovel_lostandfound/search_post_page.dart';
import 'package:flutter/cupertino.dart';
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  final _pageOptions = [
    AllPostsPage(),
    SearchPostPage(),
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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        // automaticallyImplyLeading: false
      ),
      // body: Center(
      //   // Center is a layout widget. It takes a single child and positions it
      //   // in the middle of the parent.
      //   child: Column(
      //     // Column is also a layout widget. It takes a list of children and
      //     // arranges them vertically. By default, it sizes itself to fit its
      //     // children horizontally, and tries to be as tall as its parent.
      //     //
      //     // Column has various properties to control how it sizes itself and
      //     // how it positions its children. Here we use mainAxisAlignment to
      //     // center the children vertically; the main axis here is the vertical
      //     // axis because Columns are vertical (the cross axis would be
      //     // horizontal).
      //     //
      //     // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
      //     // action in the IDE, or press "p" in the console), to see the
      //     // wireframe for each widget.
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       const Text(
      //         'Page selected:',
      //       ),
      //       Text(
      //         // '$_counter',
      //         '$currentPageIndex',
      //         style: Theme.of(context).textTheme.headlineMedium,
      //       ),
      //     ],
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => signOut(),
        child: Icon(Icons.logout_rounded),
        backgroundColor: Colors.blue,
      ),
      body: _pageOptions[currentPageIndex],
      // body: ElevatedButton(
      //     onPressed: () {
      //       Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (context) => LoginPage(title: 'Login'))
      //       );
      //     },
      //     child: const Text('Login')
      // ),
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
            label: 'Search post',
          ),
          NavigationDestination(
            // selectedIcon: Icon(Icons.bookmark),
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