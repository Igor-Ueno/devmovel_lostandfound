import 'package:flutter/material.dart';

class SearchPostPage extends StatefulWidget {
  const SearchPostPage({super.key});

  @override
  State<SearchPostPage> createState() => _SearchPostPageState();

}

class _SearchPostPageState extends State<SearchPostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Search post page'),
      ),
    );
  }
}