import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop_app/core/assets/app_icon_assets.dart';
import 'package:furniture_shop_app/core/assets/app_image_assets.dart';
import 'package:furniture_shop_app/core/extensions/widget_extension.dart';
import 'package:furniture_shop_app/presentation/controllers/main/profile_controller.dart';
import 'package:furniture_shop_app/presentation/pages/main/widgets/profile_tile.dart';
import 'package:get/get.dart';
import '../../../core/theme/app_text_theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ProfileController.to;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: SvgPicture.asset(AppIconAssets.search)),
        title: const Text('Profile'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => controller.logout(context: context),
            icon: SvgPicture.asset(AppIconAssets.logout),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  child: Image.asset(AppImageAssets.bruno),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        controller.user.value.name,
                        style: kBlackNunitoMediumTitleStyle,
                      ),
                    ),
                    Obx(
                      () => Text(
                        controller.user.value.email,
                        style: kBodyNunitoTextStyle,
                      ),
                    )
                  ],
                )
              ],
            ).defaultItemVerticalPadding(),

            ProfileTile(
              title: 'My Orders',
              subTitle: 'bruno203@gmail.com',
              onTap: controller.onMyOrdersClick,
            ),

            ProfileTile(
              title: 'Shipping Address',
              subTitle: '03 Addresses',
              onTap: controller.onShippingAddressClick,
            ),

            ProfileTile(
              title: 'Payment Method',
              subTitle: 'You have 2 cards',
              onTap: controller.onPaymentMethodClick,
            ),

            ProfileTile(
              title: 'My reviews',
              subTitle: 'Reviews for 5 items',
              onTap: controller.onMyReviewsClick,
            ),

            ProfileTile(
              title: 'Setting',
              subTitle: 'Notification, Password, FAQ, Contact',
              onTap: controller.onSettingsClick,
            ),

          ],
        ).defaultScreenPadding(),
      ),
    );
  }
}
