import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop_app/config/theme/app_text_theme.dart';
import 'package:furniture_shop_app/core/assets/app_svg_assets.dart';
import 'package:furniture_shop_app/core/extensions/widget_extension.dart';
import 'package:furniture_shop_app/presentation/widgets/auth/signup_input_card.dart';
import '../../widgets/auth/login_input_card.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBody: true,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Header
            Row(
              children: [
                const Expanded(child: Divider(thickness: 1.5)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SvgPicture.asset(AppSvgAssets.furniture),
                ),
                const Expanded(child: Divider(thickness: 1.5)),
              ],
            ),
            Text('WELCOME', style: kBlackGelasioLargeTitleStyle),
            const SignupInputCard(),
          ],
        ).defaultScreenPadding(
          top: 40,
          bottom: 40,
        ),
      ),
    );
  }
}
