import 'package:flutter/material.dart';
import 'package:furniture_shop_app/common/widgets/furniture_text_button.dart';
import 'package:furniture_shop_app/config/theme/app_text_theme.dart';
import 'package:furniture_shop_app/core/extensions/widget_extension.dart';
import 'package:furniture_shop_app/presentation/controllers/main/favorites_controller.dart';
import 'package:furniture_shop_app/presentation/widgets/favorites_list.dart';
import 'package:get/get.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = FavoritesController.to;
    controller.loadData();

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                Text('Favorites', style: kBlackGelasioMediumTitleStyle),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart_outlined)),
              ],
            ),
            Expanded(
              child: Obx(
                () => FavoritesList(list: controller.favorites.value),
              ),
            ),
            FurnitureTextButton(
              text: 'Add all to my cart',
              onClick: controller.addAllFavoritesToMyCart,
            )
          ],
        ).defaultScreenPadding(),
      ),
    );
  }
}
