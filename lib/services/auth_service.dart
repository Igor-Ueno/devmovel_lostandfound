import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/account.dart';
import '../models/login.dart';

class AuthService {
  // static const String baseUrl = 'https://backend-devmovel.onrender.com/api/auth';
  static const String baseUrl = 'http://192.168.15.12:5000/api/auth2';

  Future<http.Response> createAccount(Account account) async {
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

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to create account');
    }
  }

  Future<http.Response> login(Login account) async {
    http.Response response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'ra': account.ra,
        'password': account.password,
      }),
    );

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to login');
    }
  }
}
