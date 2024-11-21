import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/assets/app_image_assets.dart';
import 'package:furniture_shop_app/presentation/controllers/intro/onboarding_controller.dart';
import '../../../config/theme/app_text_theme.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(

            /// Background image
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppImageAssets.introBackground),
            ),

          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(flex: 3),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MAKE YOUR',
                    style: kGreyGelasioMediumTitleStyle,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'HOME BEAUTIFUL',
                    style: kBlackGelasioLargeTitleStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 25),
                    child: Text(
                      "The best simple place where you discover most wonderful furniture's and make your home beautiful",
                      style: kGrayNunitoHeight2TextStyle,
                    ),
                  ),
                ],
              ),
              const Spacer(flex: 2),
              TextButton(
                onPressed: OnboardingController.to.completeOnboarding,
                child: const Text(
                  'Get Started',
                ),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
