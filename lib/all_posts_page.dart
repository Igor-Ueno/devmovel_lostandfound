import 'package:flutter/material.dart';

class AllPostsPage extends StatefulWidget {
  const AllPostsPage({super.key});

  @override
  State<AllPostsPage> createState() => _AllPostsPageState();

}

class _AllPostsPageState extends State<AllPostsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('All posts page'),
      ),
    );
  }
}