import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop_app/core/assets/app_svg_assets.dart';
import 'package:furniture_shop_app/domain/entities/furniture_entity.dart';
import 'package:furniture_shop_app/presentation/controllers/home_controller.dart';
import '../../../../../common/widgets/furniture_icon_button.dart';
import '../../../../../config/theme/app_text_theme.dart';

class FurnitureList extends StatelessWidget {
  const FurnitureList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.to;

    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 0.61,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      children: List.generate(
        controller.furniture.length,
        (index) {
          final entity = controller.furniture[index];
          return GestureDetector(
            onTap: () => controller.onItemClick(id: entity.id),
            child: _FurnitureListItem(entity: entity),
          );
        },
      ),
    );
  }
}

class _FurnitureListItem extends StatelessWidget {
  final FurnitureEntity entity;
  const _FurnitureListItem({
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
                  image: AssetImage(entity.image),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20)),
            child: FurnitureIconButton(
              size: IconButtonSize.small,
              backgroundColor: const Color(0x66606060),
              onClick: () {},
              icon: SvgPicture.asset(AppSvgAssets.shoppingBag),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(entity.name, style: kBodyNunitoTextStyle),
              Text('\$${entity.price}.00',
                  style: kBlackNunitoSmallTitleStyle),
            ],
          ),
        )
      ],
    );
  }
}
