import 'package:ai_medicare/providers/login_provider.dart';
import 'package:ai_medicare/providers/models/authModel/auth_model.dart';
import 'package:ai_medicare/providers/models/authModel/login_request.dart';
import 'package:ai_medicare/providers/shared_preference_helper.dart';
import 'package:ai_medicare/validators/validators.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final LoginProvider authProvider;
  final SharedPreferenceHelper prefs;
  LoginController({required this.authProvider, required this.prefs});

  RxBool loading = false.obs;
  final _pVisibility = false.obs;
  RxString username = "".obs;
  RxString password = "".obs;
  final RxString _error = "".obs;
  Rx<String?> uErorText = Rx<String?>(null);
  Rx<String?> pErorText = Rx<String?>(null);
  Rx<Function?> submitFunc = Rx<Function?>(null);

  String get error => _error.value;
  bool get pVisibility => !_pVisibility.value;

  @override
  void onInit() {
    super.onInit();
    //prefs.getSession.then((val) => print(val!.firstTime));
    debounce(username, uValidations, time: const Duration(milliseconds: 500));
    debounce(password, pValidations, time: const Duration(milliseconds: 500));
  }

  void usernameChanged(String val) {
    username.value = val;
  }

  void passwordVisibilityChanged() {
    _pVisibility.value = !_pVisibility.value;
  }

  void passwordChanged(String val) {
    password.value = val;
  }

  void setError(String val) {
    _error.value = val;
  }

  void uValidations(String val) async {
    uErorText.value = null;
    submitFunc.value = null;
    if (Validator.emptyValidator(val)) {
      submitFunc.value = submitFunction();
      uErorText.value = null;
    } else {
      uErorText.value = 'enter Email';
    }
  }

  void pValidations(String val) async {
    pErorText.value = null;
    submitFunc.value = null;
    if (Validator.emptyValidator(val)) {
      submitFunc.value = submitFunction();
      pErorText.value = null;
    } else {
      pErorText.value = 'enter pasword';
    }
  }

  Future<AuthModel> login() async {
    loading.value = true;
    _error.value = "";

    try {
      var request =
          LoginRquest(email: username.value, password: password.value);
      var session = await prefs.getSession;
      AuthModel result = await authProvider.login(request);
      if (result.success == true) {
        username.value = "";
        password.value = "";
        submitFunc.value = null;
        await prefs.saveAuthUser(result);
        if (session!.firstTime == true) {
          await prefs.saveSession(session.copyWith(firstTime: false));
        }
      }
      loading.value = false;
      return result;
    } catch (_) {
      loading.value = false;
      return AuthModel(message: _.toString(), success: false);
    }
  }

  Future<AuthModel> Function() submitFunction() {
    return () async {
      return await login();
    };
  }
}
