import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService extends GetxService {
  late SharedPreferences _prefs;

  static const String _onboardingCompletedKey = 'onboardingCompleted';
  static const String _loggedInKey = 'loggedIn';

  Future<SharedPreferencesService> init() async {
    _prefs = await SharedPreferences.getInstance();
    return this;
  }

  bool get onboardingCompleted => _prefs.getBool(_onboardingCompletedKey) ?? false;

  set onboardingCompleted(bool value) => _prefs.setBool(_onboardingCompletedKey, value);

  bool get loggedIn => _prefs.getBool(_loggedInKey) ?? false;

  set loggedIn(bool value) => _prefs.setBool(_loggedInKey, value);
}