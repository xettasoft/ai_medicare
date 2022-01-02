import 'dart:async';
import 'dart:convert';

import 'package:ai_medicare/common/provider.dart';
import 'package:ai_medicare/providers/models/authModel/auth_model.dart';
import 'package:ai_medicare/providers/models/session/session.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  // shared pref instance
  final Future<SharedPreferences> _sharedPreference;

  // constructor
  SharedPreferenceHelper(this._sharedPreference);

  // General Methods: ----------------------------------------------------------
  Future<String?> get authToken async {
    return _sharedPreference.then((preference) {
      return preference.getString(ProviderConstant.token);
    });
  }

  Future<void> saveAuthToken(String authToken) async {
    return _sharedPreference.then((preference) {
      preference.setString(ProviderConstant.token, authToken);
    });
  }

  Future<AuthModel?> get authUser async {
    return _sharedPreference.then((preference) {
      var userStr =
          jsonDecode(preference.getString(ProviderConstant.user).toString());
      return userStr != null ? AuthModel.fromJson(userStr) : null;
    });
  }

  Future<SessionModel?> get getSession async {
    return _sharedPreference.then((preference) {
      var sessionStr =
          jsonDecode(preference.getString(ProviderConstant.session).toString());
      return sessionStr != null
          ? SessionModel.fromJson(sessionStr)
          : SessionModel(firstTime: true);
    });
  }

  Future<void> saveSession(SessionModel session) async {
    return _sharedPreference.then((preference) {
      preference.setString(
          ProviderConstant.session, jsonEncode(session.toJson()));
    });
  }

  Future<void> saveAuthUser(AuthModel authUser) async {
    saveAuthToken(authUser.tokens?.accessToken ?? "");
    return _sharedPreference.then((preference) {
      preference.setString(
          ProviderConstant.user, jsonEncode(authUser.toJson("")));
    });
  }

  Future<void> removeAuthUser() async {
    removeAuthToken();
    return _sharedPreference.then((preference) {
      preference.remove(ProviderConstant.user);
    });
  }

  Future<void> removeAuthToken() async {
    return _sharedPreference.then((preference) {
      preference.remove(ProviderConstant.token);
    });
  }
}
