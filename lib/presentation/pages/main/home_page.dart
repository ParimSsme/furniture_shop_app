import 'package:flutter/material.dart';
import 'package:furniture_shop_app/config/theme/app_text_theme.dart';
import 'package:furniture_shop_app/core/extensions/widget_extension.dart';
import 'package:furniture_shop_app/presentation/controllers/main/home_controller.dart';
import '../../widgets/main/home/category_list.dart';
import '../../widgets/main/home/furniture_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = HomeController.to;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            /// Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                Column(
                  children: [
                    Text('Make Home', style: kBodyNunitoTextStyle),
                    Text('BEAUTIFUL', style: kBlackGelasioMediumTitleStyle),
                  ],
                ),
                IconButton(
                    onPressed: controller.onMyCartClick,
                    icon: const Icon(Icons.shopping_cart_outlined)),
              ],
            ),

            /// Category Filters
            const SizedBox(
              height: 80,
              child: CategoryList(),
            ),

            /// Furniture List
            const Expanded(
              child: FurnitureList(),
            )
          ],
        ).defaultScreenPadding(),
      ),
    );
  }
}
