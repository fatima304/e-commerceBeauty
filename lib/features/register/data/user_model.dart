class User {
  final String email;
  final String? name;
  final String password;
  final String? confirmPassword;
  final String? phone;
  final String? location;

  User(
      {required this.email,
      this.name,
      required this.password,
      this.phone,
      this.location})
      : confirmPassword = password;

  Map<String, dynamic> toJson() => {
        "email": email,
        'name': 'Fatma Atef',
        "password": password,
        "confirmPassword": confirmPassword,
        "phone": '1234567890',
        "location":
            '{"name":"methalfa","address":"meet halfa","coordinates":[30.1572709,31.224779]}',
      };
}
