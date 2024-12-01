import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop_app/core/widgets/app_icon_button.dart';
import 'package:furniture_shop_app/domain/entities/product_entity.dart';
import 'package:furniture_shop_app/presentation/controllers/main/home_controller.dart';
import 'package:get/get.dart';
import '../../../../../core/assets/app_icon_assets.dart';
import '../../../../../core/theme/app_text_theme.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.to;

    return Obx(
      () => GridView.count(
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
              child: _ProductListItem(entity: entity),
            );
          },
        ),
      ),
    );
  }
}

class _ProductListItem extends StatelessWidget {
  final ProductEntity entity;
  const _ProductListItem({
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.bottomRight,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(entity.images.values.first.first),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20)),
            child: AppIconButton(
              size: IconButtonSize.small,
              backgroundColor: const Color(0x66606060),
              onClick: () {},
              icon: SvgPicture.asset(AppIconAssets.shoppingBag),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(entity.name, style: kBodyNunitoTextStyle),
              Text('\$${entity.price}'.padRight(2, '0'), style: kBlackNunitoSmallTitleStyle),
            ],
          ),
        )
      ],
    );
  }
}
