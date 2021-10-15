
import 'package:ai_medicare/providers/login_provider.dart';
import 'package:ai_medicare/providers/models/authModel/login_model.dart';
import 'package:ai_medicare/validators/validators.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final LoginProvider authProvider;
  LoginController({required this.authProvider});

  RxBool loading = false.obs;
  RxString username = "".obs;
  RxString password = "".obs;
  Rx<String?> uErorText = Rx<String?>(null);
  Rx<String?> pErorText = Rx<String?>(null);
  Rx<Function?> submitFunc = Rx<Function?>(null);

  @override
  void onInit() {
    super.onInit();
    debounce(username, uValidations, time: const Duration(milliseconds: 500));
    debounce(password, pValidations, time: const Duration(milliseconds: 500));
  }

  void usernameChanged(String val) {
    username.value = val;
  }

  void passwordChanged(String val) {
    password.value = val;
  }

  void uValidations(String val) async {
    uErorText.value = null;
    submitFunc.value = null;
    if (Validator.usernameValidator(val)) {
      submitFunc.value = submitFunction();
      uErorText.value = null;
    } else {
      uErorText.value = 'enter username';
    }
  }

  void pValidations(String val) async {
    pErorText.value = null;
    submitFunc.value = null;
    if (Validator.usernameValidator(val)) {
      submitFunc.value = submitFunction();
      pErorText.value = null;
    } else {
      pErorText.value = 'enter username';
    }
  }

  Future<LoginModel> login() async {
    loading.value = true;
    var data = {"username": username.value, "password": password.value};
    LoginModel result = await authProvider.login(data);
    loading.value = false;
    username.value = "";
    password.value = "";
    uErorText.value = null;
    pErorText.value = null;
    return result;
  }

  Future<LoginModel> Function() submitFunction() {
    return () async {
      return await login();
    };
  }
}
