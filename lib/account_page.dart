import 'package:flutter/material.dart';
import 'generated/l10n.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();

}

class _AccountPageState extends State<AccountPage> {

  // late final MainViewModel viewModel;

  final _messageController = TextEditingController();
  final _fromController = TextEditingController();
  final _toController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).account_title),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
        body: Center(
          child: Text(S.of(context).account_title),
        ),
    );
  }
}