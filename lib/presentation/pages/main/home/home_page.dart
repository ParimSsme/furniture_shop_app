import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/extensions/widget_extension.dart';
import 'package:furniture_shop_app/presentation/controllers/main/home_controller.dart';
import 'package:furniture_shop_app/presentation/pages/main/home/widgets/product_list_item.dart';
import '../../../../core/theme/app_text_theme.dart';
import 'widgets/category_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = HomeController.to;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        centerTitle: true,
        title:  Column(
          children: [
            Text('Make Home', style: kBodyNunitoTextStyle),
            Text('BEAUTIFUL', style: kBlackGelasioMediumTitleStyle),
          ],
        ),
        actions: [
          IconButton(
            onPressed: controller.onMyCartClick,
            icon: const Icon(Icons.shopping_cart_outlined),),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [

            /// Category Filters
            const SizedBox(
              height: 80,
              child: CategoryList(),
            ),

            /// Furniture List
            Expanded(
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: 0.61,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: List.generate(
                  controller.products.length,
                      (index) {
                    final entity = controller.products[index];
                    return GestureDetector(
                      onTap: () => controller.onItemClick(id: entity.id),
                      child: ProductListItem(entity: entity),
                    );
                  },
                ),
              ),
            )
          ],
        ).defaultScreenPadding(),
      ),
    );
  }
}
