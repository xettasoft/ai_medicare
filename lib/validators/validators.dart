class Validator {
  Validator._();

  static bool emptyValidator(String value) {
    return value.isNotEmpty;
  }
}
