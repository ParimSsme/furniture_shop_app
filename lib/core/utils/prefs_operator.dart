import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsOperator {
  static PrefsOperator get to => Get.find();

  static const _usernamePrefKey = "username";
  static const _isFirstRunPrefKey = "isFirstRun";
  static const _isLoggedInPrefKey = "isLoggedIn";

  final SharedPreferences _preferences = Get.find<SharedPreferences>();


  saveUsername(token) async {
    _preferences.setString(_usernamePrefKey, token);
    _preferences.setBool(_isLoggedInPrefKey, true);
  }

  String getUsername() {
    final String? userToken = _preferences.getString(_usernamePrefKey);
    return userToken ?? '';
  }

  Future<void> logout() async {
    _preferences.clear();
    _preferences.setString(_usernamePrefKey, '');
    _preferences.setBool(_isFirstRunPrefKey, false);
  }

  void setIsFirstRunToFalse() async {
    _preferences.setBool(_isFirstRunPrefKey, false);
  }

  Future<bool> getIsFirstRun() async {
    return _preferences.getBool(_isFirstRunPrefKey) ?? true;
  }

}