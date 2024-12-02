import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/theme/app_text_theme.dart';
import 'package:furniture_shop_app/core/widgets/app_card.dart';

class SettingsTile extends StatelessWidget {
  final String title;
  final String value;
  const SettingsTile({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      height: 64,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: kBodyNunitoTextStyle,
          ),
          Text(
            value,
            style: kBlackNunitoSmallTitleStyle.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
