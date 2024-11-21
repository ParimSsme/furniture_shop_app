import 'package:furniture_shop_app/core/utils/app_navigator.dart';
import 'package:get/get.dart';
import '../../../core/services/shared_preferences_service.dart';

class OnboardingController extends GetxController {
  static OnboardingController get to => Get.find();

  final SharedPreferencesService _sharedPreferencesService;

  OnboardingController(this._sharedPreferencesService);

  void completeOnboarding() {
    _sharedPreferencesService.onboardingCompleted = true;
    AppNavigator.to.navigateToLogin();
  }
}
