import 'package:devmovel_lostandfound/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'generated/l10n.dart';
import 'homepage.dart';
import 'models/account.dart';
import 'models/account_response.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

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

  final double _spaceBetweenFields = 8;

  Future<Response> createAccount(String ra, String password, String name, String email, String phoneNumber, String photoUrl) async {
    Account account = Account(
      ra: ra,
      password: password,
      name: name,
      email: email,
      phoneNumber: phoneNumber,
      photoUrl: photoUrl
    );

    Response res = Response("", 500);

    try {
      res = await AuthService().createAccount(account);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error occurred when creating account: ${e.toString()}")),
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.surface,
        title: Text(S.of(context).create_account_title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _raController,
                      // validator: (value) => validate(context, value),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: S.of(context).ra
                      ),
                      validator: formFieldValidator,
                    ),
                    SizedBox(height: _spaceBetweenFields,),
                    TextFormField(
                      controller: _passwordController,
                      // validator: (value) => validate(context, value),
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: S.of(context).password
                      ),
                      validator: formFieldValidator,
                    ),
                    SizedBox(height: _spaceBetweenFields,),
                    TextFormField(
                      controller: _nameController,
                      // validator: (value) => validate(context, value),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: S.of(context).name
                      ),
                      validator: formFieldValidator,
                    ),
                    SizedBox(height: _spaceBetweenFields,),
                    TextFormField(
                      controller: _emailController,
                      // validator: (value) => validate(context, value),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: S.of(context).email
                      ),
                      validator: formFieldValidator,
                    ),
                    SizedBox(height: _spaceBetweenFields,),
                    TextFormField(
                      controller: _phoneNumberController,
                      // validator: (value) => validate(context, value),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: S.of(context).phone_number
                      ),
                      validator: formFieldValidator,
                    ),
                    SizedBox(height: _spaceBetweenFields,),
                    TextFormField(
                      controller: _photoUrlController,
                      // validator: (value) => validate(context, value),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: S.of(context).photos_url
                      ),
                      validator: formFieldValidator,
                    ),
                    const SizedBox(height: 8,),
                    FilledButton(
                        onPressed: () async {
                          SharedPreferences prefs = await SharedPreferences.getInstance();
                          if (_formKey.currentState!.validate()) {
                            Response resp = await createAccount(
                                _raController.text,
                                _passwordController.text,
                                _nameController.text,
                                _emailController.text,
                                _phoneNumberController.text,
                                _photoUrlController.text);
                            if (resp.statusCode == 200) {
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
                        child: Text(S.of(context).create_account_button)
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