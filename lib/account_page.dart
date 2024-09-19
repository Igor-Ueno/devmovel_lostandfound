import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'generated/l10n.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();

}

class _AccountPageState extends State<AccountPage> {
  var _ra = "0";
  var _name = "0";
  var _email = "0";
  var _phoneNumber = "0";
  var _photoUrl = "0";

  Future<void> loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _ra = prefs.getString('ra')!;
    _name = prefs.getString('name')!;
    _email = prefs.getString('email')!;
    _phoneNumber = prefs.getString('phoneNumber')!;
    _photoUrl = prefs.getString('photoUrl')!;

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).account_title),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: Column(
            children: [
              Image.network(_photoUrl,
                width: 160,
                height: 90,
                fit: BoxFit.cover,
              ),
              Text(_name, style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('RA: ', style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text(_ra, style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal
                  ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('E-mail: ', style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  Text(_email, style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal
                  ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Telefone: ', style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  Text(_phoneNumber, style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal
                  ),
                  )
                ],
              ),
            ],
          )
        ),
    );
  }
}