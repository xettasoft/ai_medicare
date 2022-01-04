class RegisterRquest {
  RegisterRquest(
      {this.email, this.password, this.firstName, this.lastName, this.phone});

  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? email;
  final String? password;

  Map<String, String?> toJson() => {
        "email": email,
        "password": password,
        "first_name": firstName,
        "last_name": lastName,
        "phone_number": phone,
      };
}
