import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/account.dart';
import '../models/lost_item.dart';

class AuthService {
  // static const String baseUrl = 'https://backend-devmovel.onrender.com/api/auth';
  static const String baseUrl = 'http://10.0.2.2:5000/api/auth';

  Future<LostItem> createAccount(Account account) async {
    final response = await http.post(
      Uri.parse('$baseUrl/register'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'ra': account.ra,
        'password': account.password,
        'name': account.name,
        'email': account.email,
        'phoneNumber': account.phoneNumber,
        'photoUrl': account.photoUrl,
      }),
    );

    // final response = await http.post(Uri.parse('http://10.0.2.2:5000/api/auth/login'),
    //     headers: {
    //       'Content-Type': 'application/json',
    //     },
    //     body: jsonEncode({
    //       'ra': '1',
    //       'password': '1',
    //     }),
    // );

    print("AUTHTEST [${response.statusCode}]: createAccount() - ${json.decode(response.body)}");

    if (response.statusCode == 200) {
      return LostItem.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to create account');
    }
  }
}
