class Account {
  final String RA;
  final String password;
  final String name;
  final String email;
  final String phoneNumber;
  final String photoUrl;

  Account({
    required this.RA,
    required this.password,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.photoUrl,
  });

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
      RA: json['ra'],
      password: json['password'],
      name: json['name'],
      email: json['email'],
      phoneNumber: json['phone_number'],
      photoUrl: json['photo_url'],
    );
  }
}
