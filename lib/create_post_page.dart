import 'package:devmovel_lostandfound/services/posts_service.dart';
import 'package:flutter/material.dart';
import 'generated/l10n.dart';
import 'models/lost_item.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({super.key});

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  late Future<LostItem> lostItemPost;

  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _contactController = TextEditingController();
  final _photoUrlController = TextEditingController();

  final double _spaceBetweenFields = 10;


  var token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiNjZhYTgxN2IwNDUyZDBjOWY4NTZiZmM1In0sImlhdCI6MTcyNjY5NjE3NiwiZXhwIjoxNzI2Njk5Nzc2fQ.arvDrEafGd6OLAfsKe74jqj7xMnT6ngPa_bH2UJ6DCk';

  Future<void> createPost(String title, String description, String contact, String photoUrl) async {
    LostItem lostItem = LostItem(
        title: title,
        description: description,
        contact: contact,
        url: photoUrl);

    try {
      final lostItem_response = await PostsService().createPost(token, lostItem);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error occurred when creating post: ${e.toString()}")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).create_post_title),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _titleController,
                        // validator: (value) => validate(context, value),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: S.of(context).title
                        ),
                      ),
                      SizedBox(height: _spaceBetweenFields,),
                      TextFormField(
                        controller: _descriptionController,
                        // validator: (value) => validate(context, value),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: S.of(context).description
                        ),
                      ),
                      SizedBox(height: _spaceBetweenFields,),
                      TextFormField(
                        controller: _contactController,
                        // validator: (value) => validate(context, value),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: S.of(context).contact
                        ),
                      ),
                      SizedBox(height: _spaceBetweenFields,),
                      TextFormField(
                        controller: _photoUrlController,
                        // validator: (value) => validate(context, value),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: S.of(context).photos_url
                        ),
                      ),
                      const SizedBox(height: 16,),
                      FilledButton(
                          onPressed: () => {
                              createPost(
                                  _titleController.text,
                                  _descriptionController.text,
                                  _contactController.text,
                                  _photoUrlController.text),
                              // _titleController.clear(),
                              // _descriptionController.clear(),
                              // _contactController.clear(),
                              // _photoUrlController.clear(),
                              FocusScope.of(context).unfocus(),
                            },
                          child: Text(S.of(context).create_post_button)
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}