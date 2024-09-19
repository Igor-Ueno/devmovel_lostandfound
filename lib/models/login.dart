class Login {
  final String ra;
  final String password;

  Login({
    required this.ra,
    required this.password
  });

  factory Login.fromJson(Map<String, dynamic> json) {
    return Login(
      ra: json['ra'],
      password: json['password']
    );
  }
}
