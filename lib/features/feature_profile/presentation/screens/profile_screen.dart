import 'package:flutter/material.dart';
import 'package:furniture_shop_app/common/utils/extensions/widget.dart';
import 'package:furniture_shop_app/config/router/routes.dart';
import 'package:furniture_shop_app/config/theme/app_text_theme.dart';
import 'package:furniture_shop_app/features/feature_profile/presentation/widgets/profile_clickable_row.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                Text('Profile', style: kBlackNunitoSmallTitleStyle),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.exit_to_app)),
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  child: Image.asset('assets/images/person.png'),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Bruno Pham', style: kBlackGelasioMediumTitleStyle,),
                    Text('bruno203@gmail.com', style: kBodyNunitoTextStyle,)
                  ],
                )
              ],
            ).defaultItemVerticalPadding(),

            const ProfileClickableRow(
              title: 'My Orders',
              value: 'bruno203@gmail.com',
              nextScreen: Routes.myOrders,
            ).defaultItemVerticalPadding(),

            const ProfileClickableRow(
              title: 'Shipping Address',
              value: '',
              nextScreen: Routes.shippingAddress,
            ).defaultItemVerticalPadding(),

            const ProfileClickableRow(
              title: 'Payment Method',
              value: '',
              nextScreen: Routes.paymentMethod,
            ).defaultItemVerticalPadding(),

            const ProfileClickableRow(
              title: 'My reviews',
              value: '',
              nextScreen: Routes.myReviews,
            ).defaultItemVerticalPadding(),

            const ProfileClickableRow(
              title: 'Settings',
              value: '',
              nextScreen: Routes.settings,
            ),
          ],
        ).defaultScreenPadding(),
      ),
    );
  }
}