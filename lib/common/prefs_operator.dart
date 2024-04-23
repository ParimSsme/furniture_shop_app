import 'package:shared_preferences/shared_preferences.dart';
import '../locator.dart';

class PrefsOperator {

  static const usernamePrefKey = "username";
  static const isFirstRunPrefKey = "isFirstRun";
  static const isLoggedInPrefKey = "isLoggedIn";

  late SharedPreferences sharedPreferences;
  PrefsOperator() {
    sharedPreferences = locator();
  }


  saveUsername(token) async {
    sharedPreferences.setString(usernamePrefKey, token);
    sharedPreferences.setBool(isLoggedInPrefKey, true);
  }

  String getUsername() {
    final String? userToken = sharedPreferences.getString(usernamePrefKey);
    return userToken ?? '';
  }

  Future<void> logout() async {
    sharedPreferences.clear();
    sharedPreferences.setString(usernamePrefKey, '');
    sharedPreferences.setBool(isFirstRunPrefKey, false);
  }

  void setIsFirstRunToFalse() async {
    sharedPreferences.setBool(isFirstRunPrefKey, false);
  }

  Future<bool> getIsFirstRun() async {
    return sharedPreferences.getBool(isFirstRunPrefKey) ?? true;
  }

}