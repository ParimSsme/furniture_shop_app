import 'package:flutter/material.dart';
import 'package:furniture_shop_app/features/feature_auth/presentation/screens/login_screen.dart';
import '../../../../common/widgets/furniture_contained_text_button.dart';
import '../../../../config/router/routes.dart';
import '../../../../config/theme/app_text_theme.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/intro_background.jpg'),
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
                        AppNavigator.replaceWith(Routes.login);
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
