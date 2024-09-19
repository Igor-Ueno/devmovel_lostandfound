import 'package:devmovel_lostandfound/register_page.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Lost and Found', style: TextStyle(
              fontSize: 32,
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),),
            Icon(Icons.pageview_rounded, size: 120, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _RAController,
                      // validator: (value) => validate(context, value),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'RA'
                      ),
                    ),
                    const SizedBox(height: 16,),
                    TextFormField(
                      controller: _passwordController,
                      // validator: (value) => validate(context, value),
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password'
                      ),
                    ),
                    const SizedBox(height: 16,),
                    FilledButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const HomePage(title: 'Lost and Found'))
                          );
                        },
                        child: const Text('Login')
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const RegisterPage())
                          );
                        },
                        child: const Text('Don\'t have an account yet? Sign up!')
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