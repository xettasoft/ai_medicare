import 'package:ai_medicare/providers/models/authModel/auth_model.dart';
import 'package:ai_medicare/providers/models/session/session.dart';
import 'package:ai_medicare/providers/session_provider.dart';
import 'package:ai_medicare/providers/shared_preference_helper.dart';
import 'package:get/get.dart';

class SessionController extends GetxController {
  final SessionProvider sessionProvider;
  final SharedPreferenceHelper prefs;
  SessionController({required this.sessionProvider, required this.prefs});

  RxBool isDeviceSetupNotifier = false.obs;
  final RxBool _loading = false.obs;
  final _settings = SessionModel().obs;
  final _user = AuthModel().obs;

  bool get loading => _loading.value;
  bool get isLoggedIn => _user.value.user != null;
  AuthModel get user => _user.value;
  SessionModel get settings => _settings.value;

  @override
  void onInit() {
    super.onInit();
    settingUp();
  }

  settingUp() {
    _loading.value = true;
    prefs.authUser.then((value) {
      if (value != null) _user.value = value;
    });
    prefs.getSession.then((value) {
      if (value != null) _settings.value = value;
    });
    _loading.value = false;
  }
}
