import 'package:flutter/material.dart';

class CreatePostPagePage extends StatefulWidget {
  const CreatePostPagePage({super.key});

  @override
  State<CreatePostPagePage> createState() => _CreatePostPagePageState();

}

class _CreatePostPagePageState extends State<CreatePostPagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Create post page'),
      ),
    );
  }
}