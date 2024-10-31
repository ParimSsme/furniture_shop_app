import 'package:flutter/material.dart';
import 'package:furniture_shop_app/config/theme/app_text_theme.dart';
import 'package:furniture_shop_app/core/assets/app_image_assets.dart';
import 'package:furniture_shop_app/core/extensions/widget_extension.dart';
import 'package:furniture_shop_app/presentation/controllers/main/profile_controller.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ProfileController.to;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        title: const Text('Profile'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.exit_to_app),
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
                        style: kBlackGelasioMediumTitleStyle,
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
            ListTile(
              title: const Text('My Orders'),
              subtitle: const Text('bruno203@gmail.com'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: controller.onMyOrdersClick,
            ).defaultItemVerticalPadding(),

            ListTile(
              title: const Text('Shipping Address'),
              subtitle: const Text('03 Addresses'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: controller.onShippingAddressClick,
            ).defaultItemVerticalPadding(),

            ListTile(
              title: const Text('Payment Method'),
              subtitle: const Text('You have 2 cards'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: controller.onPaymentMethodClick,
            ).defaultItemVerticalPadding(),

            ListTile(
              title: const Text('My reviews'),
              subtitle: const Text('Reviews for 5 items'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: controller.onMyReviewsClick,
            ).defaultItemVerticalPadding(),

            ListTile(
              title: const Text('Setting'),
              subtitle: const Text('Notification, Password, FAQ, Contact'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: controller.onSettingsClick,
            ).defaultItemVerticalPadding(),

          ],
        ).defaultScreenPadding(),
      ),
    );
  }
}
