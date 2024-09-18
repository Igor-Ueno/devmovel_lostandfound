import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.title});

  final String title;

  @override
  State<RegisterPage> createState() => _RegisterPageState();

}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _raController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _photoUrlController = TextEditingController();

  final double _spaceBetweenFields = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.surface,
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
                    Text('Create your account',
                      style: TextStyle(
                          fontSize: 24,
                          color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      controller: _raController,
                      // validator: (value) => validate(context, value),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'RA'
                      ),
                    ),
                    SizedBox(height: _spaceBetweenFields,),
                    TextFormField(
                      controller: _passwordController,
                      // validator: (value) => validate(context, value),
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password'
                      ),
                    ),
                    SizedBox(height: _spaceBetweenFields,),
                    TextFormField(
                      controller: _nameController,
                      // validator: (value) => validate(context, value),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Name'
                      ),
                    ),
                    SizedBox(height: _spaceBetweenFields,),
                    TextFormField(
                      controller: _emailController,
                      // validator: (value) => validate(context, value),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email'
                      ),
                    ),
                    SizedBox(height: _spaceBetweenFields,),
                    TextFormField(
                      controller: _phoneNumberController,
                      // validator: (value) => validate(context, value),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Phone number'
                      ),
                    ),
                    SizedBox(height: _spaceBetweenFields,),
                    TextFormField(
                      controller: _photoUrlController,
                      // validator: (value) => validate(context, value),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Photo's URL"
                      ),
                    ),
                    const SizedBox(height: 16,),
                    FilledButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Create account')
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