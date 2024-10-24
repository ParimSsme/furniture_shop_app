import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../routes/app_routes.dart';
import '../services/shared_preferences_service.dart';

class AuthMiddleware extends GetMiddleware {

  @override
  RouteSettings? redirect(String? route) {
    final sharedPreferencesService = Get.find<SharedPreferencesService>();

    // Check onboarding completion status
    bool isOnboardingCompleted = sharedPreferencesService.onboardingCompleted;

    // Check if the user is logged in
    bool isLoggedIn = sharedPreferencesService.loggedIn;

    // Redirect to Onboarding if not completed
    if (!isOnboardingCompleted) {
      return const RouteSettings(name: AppRoutes.onboarding);
    }

    // If the user is logged in, go directly to HomePage
    if (isLoggedIn) {
      return const RouteSettings(name: AppRoutes.home);
    }

    // Otherwise, redirect to the LoginPage
    return const RouteSettings(name: AppRoutes.login);
  }
}