import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/assets/app_image_assets.dart';
import 'package:get/get.dart';
import '../../../common/widgets/furniture_contained_text_button.dart';
import '../../../config/theme/app_text_theme.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/services/shared_preferences_service.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final sharedPreferencesService = Get.find<SharedPreferencesService>();

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppImageAssets.introBackground),
            ),
          ),
          child: Center(
            child: SizedBox(
              height: screenHeight * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Spacer(),
                  Text('MAKE YOUR', style: kGreyGelasioMediumTitleStyle),
                  const SizedBox(height: 10),
                  Text(
                    'HOME BEAUTIFUL',
                    style: kBlackGelasioLargeTitleStyle,
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      'The best simple place where you discover most wonderful furnitures and make your home beautiful',
                      style: kBodyNunitoHeight2TextStyle,
                    ),
                  ),
                  const Spacer(),
                  const Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: FurnitureContainedTextButton(
                      onClick: () {
                        sharedPreferencesService.onboardingCompleted = true; // Set onboarding as completed
                        Get.offAllNamed(AppRoutes.login);
                      },
                      text: 'Get Started',
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
