import 'dart:convert';

class AccountResponse {
  final String token;
  final String ra;
  final String password;
  final String name;
  final String email;
  final String phoneNumber;
  final String photoUrl;

  AccountResponse({
    required this.token,
    required this.ra,
    required this.password,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.photoUrl,
  });

  factory AccountResponse.fromReqBody(String body) {
    Map<String, dynamic> json = jsonDecode(body);
    return AccountResponse(
      token: json['token'],
      ra: json['ra'],
      password: json['password'],
      name: json['name'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      photoUrl: json['photoUrl'],
    );
  }
}
