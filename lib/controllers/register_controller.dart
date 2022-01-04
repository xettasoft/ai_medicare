import 'package:ai_medicare/providers/models/authModel/auth_model.dart';
import 'package:ai_medicare/providers/models/authModel/register_request.dart';
import 'package:ai_medicare/providers/register_provider.dart';
import 'package:ai_medicare/providers/shared_preference_helper.dart';
import 'package:ai_medicare/validators/validators.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final RegisterProvider authProvider;
  final SharedPreferenceHelper prefs;
  RegisterController({required this.authProvider, required this.prefs});

  final _loading = false.obs;
  final _error = "".obs;
  final _firstName = "".obs;
  final _lastName = "".obs;
  final _phone = "".obs;
  final _email = "".obs;
  final _password = "".obs;
  final _confirmPassword = "".obs;
  final _submitFunc = Rx<Function?>(null);
  final _firstNameErorText = Rx<String?>(null);
  final _lastNameErorText = Rx<String?>(null);
  final _phoneErorText = Rx<String?>(null);
  final _emailErorText = Rx<String?>(null);
  final _passwordErorText = Rx<String?>(null);
  final _confirmPasswordErorText = Rx<String?>(null);

  String get error => _error.value;
  bool get loading => _loading.value;
  String? get firstNameErorText => _firstNameErorText.value;
  String? get lastNameErorText => _lastNameErorText.value;
  String? get phoneErorText => _phoneErorText.value;
  String? get passwordErorText => _passwordErorText.value;
  String? get emailErorText => _emailErorText.value;
  Function? get submitFunc => _submitFunc.value;
  String? get confirmPasswordErorText => _confirmPasswordErorText.value;

  @override
  void onInit() {
    super.onInit();
    debounce(_firstName, firstNameValidations,
        time: const Duration(milliseconds: 500));
    debounce(_lastName, lastNameValidations,
        time: const Duration(milliseconds: 500));
    debounce(_phone, phoneValidations, time: const Duration(milliseconds: 500));
    debounce(_email, emailValidations, time: const Duration(milliseconds: 500));
    debounce(_password, passwordValidations,
        time: const Duration(milliseconds: 500));
    debounce(_confirmPassword, confirmPasswordValidations,
        time: const Duration(milliseconds: 500));
  }

  void firstNameChanged(String val) {
    _firstName.value = val;
  }

  void lastNameChanged(String val) {
    _lastName.value = val;
  }

  void phoneChanged(String val) {
    _phone.value = val;
  }

  void emailChanged(String val) {
    _email.value = val;
  }

  void passwordChanged(String val) {
    _password.value = val;
  }

  void confirmPasswordChanged(String val) {
    _confirmPassword.value = val;
  }

  void setError(String val) {
    _error.value = val;
  }

  void firstNameValidations(String val) async {
    _firstNameErorText.value = null;
    _submitFunc.value = null;
    if (Validator.emptyValidator(val)) {
      _submitFunc.value = submitFunction();
      _firstNameErorText.value = null;
    } else {
      _firstNameErorText.value = 'Enter FirstName';
    }
  }

  void lastNameValidations(String val) async {
    _lastNameErorText.value = null;
    _submitFunc.value = null;
    if (Validator.emptyValidator(val)) {
      _submitFunc.value = submitFunction();
      _lastNameErorText.value = null;
    } else {
      _lastNameErorText.value = 'Enter LastName';
    }
  }

  void phoneValidations(String val) async {
    _phoneErorText.value = null;
    _submitFunc.value = null;
    if (Validator.emptyValidator(val)) {
      _submitFunc.value = submitFunction();
      _phoneErorText.value = null;
    } else {
      _phoneErorText.value = 'Enter PhoneNumber';
    }
  }

  void emailValidations(String val) async {
    _emailErorText.value = null;
    _submitFunc.value = null;
    if (!Validator.emptyValidator(val)) {
      _emailErorText.value = 'Enter Email';
    } else if (!Validator.emailValidator(val)) {
      _emailErorText.value = 'Invalid Email';
    } else {
      _submitFunc.value = submitFunction();
      _emailErorText.value = null;
    }
  }

  void passwordValidations(String val) async {
    _passwordErorText.value = null;
    _submitFunc.value = null;
    if (Validator.emptyValidator(val)) {
      _submitFunc.value = submitFunction();
      _passwordErorText.value = null;
    } else {
      _passwordErorText.value = 'Enter Password';
    }
  }

  void confirmPasswordValidations(String val) async {
    _confirmPasswordErorText.value = null;
    _submitFunc.value = null;
    if (!Validator.emptyValidator(val)) {
      _confirmPasswordErorText.value = 'Enter Confirm Password';
    } else if (Validator.confirmPasswordValidator(val, _password.value)) {
      _confirmPasswordErorText.value = 'Password miss-match';
    } else {
      _submitFunc.value = submitFunction();
      _confirmPasswordErorText.value = null;
    }
  }

  Future<AuthModel> register() async {
    _loading.value = true;
    _error.value = "";
    try {
      var request = RegisterRquest(
          email: _email.value,
          password: _password.value,
          firstName: _firstName.value,
          lastName: _lastName.value,
          phone: _phone.value);
      var session = await prefs.getSession;
      AuthModel result = await authProvider.register(request);
      if (result.success == true) {
        _submitFunc.value = null;
        if (session!.firstTime == true) {
          await prefs.saveSession(session.copyWith(firstTime: false));
        }
      }
      _loading.value = false;
      return result;
    } catch (_) {
      _loading.value = false;
      return AuthModel(message: _.toString(), success: false);
    }
  }

  Future<AuthModel> Function() submitFunction() {
    return () async {
      return await register();
    };
  }
}
