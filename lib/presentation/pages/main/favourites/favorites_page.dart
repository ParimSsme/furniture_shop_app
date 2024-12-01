import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/extensions/widget_extension.dart';
import 'package:furniture_shop_app/core/widgets/app_contained_text_button.dart';
import 'package:furniture_shop_app/presentation/controllers/main/favorites_controller.dart';
import 'package:furniture_shop_app/presentation/pages/main/favourites/widgets/favorite_list_item.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = FavoritesController.to;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        centerTitle: true,
        title: const Text('Favorites'),
        actions: [
          IconButton(
            onPressed: () => controller.onMyCartClick(),
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            /// Favourites List
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.vertical,
                itemCount: controller.favourites.length,
                itemBuilder: (BuildContext context, int index) {
                  final favourite = controller.favourites[index];

                  return GestureDetector(
                    onTap: () => FavoritesController.to
                        .onItemClick(id: favourite.productId),
                    child: FavoriteListItem(entity: favourite),
                  );
                },
                separatorBuilder: (_, __) => const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(),
                ),
              ),
            ),


            AppContainedTextButton(
              text: 'Add all to my cart',
              onPressed: () => controller.addAllFavoritesToMyCart(),
            )
          ],
        ).defaultScreenPadding(),
      ),
    );
  }
}
