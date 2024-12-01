import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_shop_app/core/assets/app_icon_assets.dart';
import '../../../../core/theme/app_text_theme.dart';

class CheckOutSectionTile extends StatelessWidget {
  final String title;
  const CheckOutSectionTile({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: kGreyNunitoMediumTitleStyle.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 22,
          ),
        ),
        SvgPicture.asset(AppIconAssets.edit),
      ],
    );
  }
}
