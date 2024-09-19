import 'package:devmovel_lostandfound/models/account.dart';
import 'package:devmovel_lostandfound/models/account_response.dart';
import 'package:devmovel_lostandfound/models/login.dart';
import 'package:devmovel_lostandfound/register_page.dart';
import 'package:devmovel_lostandfound/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  final _raController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<Response> login(String ra, String password) async {
    Login account = Login (
        ra: ra,
        password: password
    );

    Response res = Response("", 500);

    try {
      res = await AuthService().login(account);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error occurred when logging in: ${e.toString()}")),
      );
    }

    return res;
  }

  String? formFieldValidator(String? fieldValue){
    if (fieldValue == null || fieldValue.isEmpty) {
      return 'Required field';
    }
    return null;
  }

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
                      controller: _raController,
                      validator: formFieldValidator,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'RA'
                      ),
                    ),
                    const SizedBox(height: 16,),
                    TextFormField(
                      controller: _passwordController,
                      validator: formFieldValidator,
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password'
                      ),
                    ),
                    const SizedBox(height: 16,),
                    FilledButton(
                        onPressed: () async {
                          SharedPreferences prefs = await SharedPreferences.getInstance();
                          if (_formKey.currentState!.validate()) {
                            Response resp = await login(_raController.text, _passwordController.text);
                            if(resp.statusCode == 200) {
                              await prefs.setString('token', AccountResponse.fromReqBody(resp.body).token);
                              await prefs.setString('ra', AccountResponse.fromReqBody(resp.body).ra);
                              await prefs.setString('name', AccountResponse.fromReqBody(resp.body).name);
                              await prefs.setString('email', AccountResponse.fromReqBody(resp.body).email);
                              await prefs.setString('phoneNumber', AccountResponse.fromReqBody(resp.body).phoneNumber);
                              await prefs.setString('photoUrl', AccountResponse.fromReqBody(resp.body).photoUrl);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const HomePage(title: 'Lost and Found'))
                              );
                            }
                          }
                          else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text(
                                  'Please, fill in all fields of the form.')),
                            );
                          }
                          FocusScope.of(context).unfocus();
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