import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/services/navigation_service.dart';
import 'package:furniture_shop_app/domain/entities/furniture_entity.dart';
import 'package:furniture_shop_app/presentation/controllers/main/favorites_controller.dart';
import 'package:get/get.dart';
import '../../config/theme/app_text_theme.dart';
import '../../core/routes/app_routes.dart';

class FavoritesList extends StatelessWidget {
  final List<FurnitureEntity> list;
  const FavoritesList({
    super.key,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      scrollDirection: Axis.vertical,
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            NavigationService.to.navigateToProductDetail(id: list[index].id);
          },
          child: _FavoriteListItem(entity: list[index]),
        );
      },
      separatorBuilder: (_, __) => const Padding(
        padding: EdgeInsets.all(8.0),
        child: Divider(),
      ),
    );
  }
}

class _FavoriteListItem extends StatelessWidget {
  final FurnitureEntity entity;
  const _FavoriteListItem({
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    final controller = FavoritesController.to;

    return SizedBox(
      height: 120,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              entity.image,
              width: 120,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                entity.name,
                style: kBodyNunitoTextStyle,
              ),
              Text(
                '\$ ${entity.price}',
                style: kBlackGelasioMediumTitleStyle,
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => controller.removeFavorite(id: entity.id),
                icon: const Icon(Icons.cancel_outlined),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color(0xffe0e0e0),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_bag),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
