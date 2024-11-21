import 'package:get/get.dart';
import '../../../core/services/shared_preferences_service.dart';
import '../../controllers/intro/onboarding_controller.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingController(Get.find<SharedPreferencesService>()));
  }
}
