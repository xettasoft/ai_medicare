class LoginRquest {
  LoginRquest({
    this.email,
    this.password,
  });

  final String? email;
  final String? password;

  Map<String, String?> toJson() => {
        "email": email,
        "password": password,
      };
}
