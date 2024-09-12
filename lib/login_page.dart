import 'package:devmovel_lostandfound/register_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // late final MainViewModel viewModel;

  final _formKey = GlobalKey<FormState>();
  final _RAController = TextEditingController();
  final _passwordController = TextEditingController();

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
            // const Text('Login page'),const SizedBox(height: 20,),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _RAController,
                      // validator: (value) => validate(context, value),
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: 'RA'
                      ),
                    ),
                    const SizedBox(height: 16,),
                    TextFormField(
                      controller: _passwordController,
                      // validator: (value) => validate(context, value),
                      obscureText: true,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: 'Password'
                      ),
                    ),
                    const SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => HomePage(title: 'Achados e Perdidos'))
                              );
                            },
                            child: const Text('Login')
                        ),
                        const SizedBox(height: 20,),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => RegisterPage(title: 'Sign In'))
                              );
                            },
                            child: const Text('Sign Up')
                        ),
                      ],
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