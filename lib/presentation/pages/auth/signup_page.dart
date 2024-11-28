import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop_app/core/extensions/widget_extension.dart';
import 'package:furniture_shop_app/presentation/pages/auth/widgets/signup_input_card.dart';
import '../../../core/assets/app_icon_assets.dart';
import '../../../core/theme/app_text_theme.dart';

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
                  child: SvgPicture.asset(AppIconAssets.furniture),
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
