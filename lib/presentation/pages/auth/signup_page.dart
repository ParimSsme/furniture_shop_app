import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.1,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Header
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                      const SizedBox(height: 25),
                      Text('WELCOME', style: kBlackGelasioLargeTitleStyle),
                    ],
                  ),
                ),

                const SignupInputCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
