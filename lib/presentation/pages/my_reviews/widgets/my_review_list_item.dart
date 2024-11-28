import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop_app/core/widgets/app_card.dart';
import '../../../../core/assets/app_image_assets.dart';
import '../../../../core/assets/app_svg_assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_theme.dart';

class MyReviewListItem extends StatelessWidget {
  const MyReviewListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 242,
      child: AppCard(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              /// Product image, name and price
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.asset(
                      AppImageAssets.lamp3,
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Coffee Table", style: kGreyNunitoSmallTitleStyle),
                      Text("\$ 50.00", style: kBlackNunitoSmallTitleStyle),
                    ],
                  ),
                ],
              ),

              /// Stars and date
              Row(
                children: [
                  for (int i = 0; i < 5; i++)
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: SvgPicture.asset(
                        AppSvgAssets.star,
                        height: 16,
                        width: 16,
                      ),
                    ),
                  const Spacer(),
                  Text(
                    "20/03/2020",
                    style: kBodyNunitoTextStyle.copyWith(color: AppColors.textSecondary),
                  ),
                ],
              ),

              /// Description
              const Text(
                "Nice Furniture with good delivery. The delivery time is very fast. The products look exactly like the pictures in the app. The color and quality are great despite the low price.",
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}