import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop_app/core/widgets/app_icon_button.dart';
import 'package:furniture_shop_app/domain/entities/product_entity.dart';
import '../../../../../core/assets/app_icon_assets.dart';
import '../../../../../core/theme/app_text_theme.dart';

class ProductListItem extends StatelessWidget {
  final ProductEntity entity;
  const ProductListItem({
    super.key,
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
              Text('\$${entity.price}'.padRight(2, '0'),
                  style: kBlackNunitoSmallTitleStyle),
            ],
          ),
        )
      ],
    );
  }
}
