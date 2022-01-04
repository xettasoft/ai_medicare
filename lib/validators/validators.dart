import 'package:ai_medicare/extensions/strings.dart';

class Validator {
  Validator._();

  static bool emptyValidator(String value) {
    return value.isNotEmpty;
  }

  static bool emailValidator(String value) {
    return value.isValidEmail();
  }

  static bool confirmPasswordValidator(String value, String password) {
    return value != password;
  }
}
