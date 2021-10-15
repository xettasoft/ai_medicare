class Validator {
  Validator._();

  static bool usernameValidator(String value) {
    return value.isNotEmpty;
  }
}
