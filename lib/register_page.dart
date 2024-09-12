import 'package:flutter/material.dart';

import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.title});

  final String title;

  @override
  State<RegisterPage> createState() => _RegisterPageState();

}

class _RegisterPageState extends State<RegisterPage> {

  // late final MainViewModel viewModel;

  final _formKey = GlobalKey<FormState>();
  final _RaController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _photoUrlController = TextEditingController();

  double _spaceBetweenFields = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
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
                    // const Text('Please, fill the fields to create a account.'),
                    // const SizedBox(height: 16,),
                    TextFormField(
                      controller: _RaController,
                      // validator: (value) => validate(context, value),
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: 'RA'
                      ),
                    ),
                    SizedBox(height: this._spaceBetweenFields,),
                    TextFormField(
                      controller: _passwordController,
                      // validator: (value) => validate(context, value),
                      obscureText: true,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: 'Password'
                      ),
                    ),
                    SizedBox(height: this._spaceBetweenFields,),
                    TextFormField(
                      controller: _nameController,
                      // validator: (value) => validate(context, value),
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: 'Name'
                      ),
                    ),
                    SizedBox(height: this._spaceBetweenFields,),
                    TextFormField(
                      controller: _emailController,
                      // validator: (value) => validate(context, value),
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: 'Email'
                      ),
                    ),
                    SizedBox(height: this._spaceBetweenFields,),
                    TextFormField(
                      controller: _phoneNumberController,
                      // validator: (value) => validate(context, value),
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: 'Phone number'
                      ),
                    ),
                    SizedBox(height: this._spaceBetweenFields,),
                    TextFormField(
                      controller: _photoUrlController,
                      // validator: (value) => validate(context, value),
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: "Photo's URL"
                      ),
                    ),
                    const SizedBox(height: 16,),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Sign Up')
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