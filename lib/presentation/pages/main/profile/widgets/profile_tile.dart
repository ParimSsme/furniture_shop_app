import 'package:flutter/material.dart';
import 'package:furniture_shop_app/core/extensions/widget_extension.dart';
import 'package:furniture_shop_app/core/widgets/app_card.dart';

class ProfileTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final VoidCallback onTap;
  const ProfileTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: ListTile(
        title: Text(title),
        subtitle: Text(subTitle),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    ).defaultItemVerticalPadding();
  }
}
