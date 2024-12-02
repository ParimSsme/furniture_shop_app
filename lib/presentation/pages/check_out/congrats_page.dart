import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop_app/core/enums/order_state.dart';
import 'package:furniture_shop_app/core/extensions/widget_extension.dart';
import 'package:furniture_shop_app/core/widgets/app_contained_text_button.dart';
import 'package:furniture_shop_app/presentation/controllers/check_out/congrats_controller.dart';
import 'package:get/get.dart';
import '../../../core/assets/app_icon_assets.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_theme.dart';

class CongratsPage extends GetView<CongratsController> {
  const CongratsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            /// Title
            Text(
              'SUCCESS!',
              style: kBlackGelasioLargeTitleStyle.copyWith(fontSize: 35),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            /// Image section
            SizedBox(
              height: 268,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned.fill(
                    bottom: 25,
                    child: SvgPicture.asset(AppIconAssets.congrats),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Icon(
                      controller.orderState.icon,
                      size: 50,
                      color: controller.orderState.color,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            /// Message
            Text(
              'Your order will be delivered soon.\nThank you for choosing our app!',
              style: kGreyNunitoSmallTitleStyle.copyWith(
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 60),

            /// Buttons
            AppContainedTextButton(
              text: 'Track your orders',
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                textStyle: kTextButtonStyle,
                foregroundColor: AppColors.primary,
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                side: const BorderSide(
                  color: AppColors.primary,
                  width: 1,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Border radius
                ),
              ),
              child: const Text('BACK TO HOME'),
            ),

          ],
        ).defaultScreenPadding(),
      ),
    );
  }
}
