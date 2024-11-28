import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_shop_app/core/assets/app_icon_assets.dart';
import '../../../../core/theme/app_text_theme.dart';

class SettingsSectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onEditClick;
  const SettingsSectionHeader({
    super.key,
    required this.title,
    required this.onEditClick,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: kGreyNunitoSmallTitleStyle,
        ),
        IconButton(
          onPressed: onEditClick,
          icon: SvgPicture.asset(AppIconAssets.edit),
        ),
      ],
    );
  }
}
