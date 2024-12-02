import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/assets/app_icon_assets.dart';
import '../../../core/theme/app_text_theme.dart';
import 'widgets/login_input_card.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  /// Header
                  Row(
                    children: [
                      const Expanded(child: Divider(thickness: 1.5)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SvgPicture.asset(AppIconAssets.furniture),
                      ),
                      const Expanded(child: Divider(thickness: 1.5)),
                    ],
                  ),

                  const SizedBox(height: 20),

                  /// Greeting texts
                  Text('Hello!', style: kGreyGelasioLargeTitleStyle),
                  Text('WELCOME BACK', style: kBlackGelasioLargeTitleStyle),

                ],
              ),
            ),

            const LoginInputCard(),
          ],
        ),
      ),
    );
  }
}


