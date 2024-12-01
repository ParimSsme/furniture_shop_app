import 'package:flutter/material.dart';
import 'package:furniture_shop_app/domain/entities/favourite_entity.dart';
import '../../../../../core/theme/app_text_theme.dart';

class FavoriteListItem extends StatelessWidget {
  final FavouriteEntity entity;
  const FavoriteListItem({super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {

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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                entity.name,
                style: kGreyNunitoSmallTitleStyle.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 16
                ),
              ),
              Text(
                '\$ ${entity.price}.00',
                style: kBlackNunitoMediumTitleStyle.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 20
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: (){},
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
