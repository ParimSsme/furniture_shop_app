import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop_app/config/theme/app_text_theme.dart';
import 'package:furniture_shop_app/core/assets/app_svg_assets.dart';
import 'package:furniture_shop_app/core/extensions/widget_extension.dart';
import '../../widgets/auth/login/input_card.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Header(),
            _GreetingText(),
            LoginInputCard(),
          ],
        ).defaultScreenPadding(
          top: 40,
          bottom: 40,
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(thickness: 1.5)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SvgPicture.asset(AppSvgAssets.furniture),
        ),
        const Expanded(child: Divider(thickness: 1.5)),
      ],
    );
  }
}

class _GreetingText extends StatelessWidget {
  const _GreetingText();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Hello!', style: kGreyGelasioMediumTitleStyle),
        Text('WELCOME BACK', style: kBlackGelasioLargeTitleStyle),
      ],
    );
  }
}
