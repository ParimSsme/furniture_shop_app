import 'package:flutter/cupertino.dart';
import 'package:furniture_shop_app/core/theme/app_text_theme.dart';
import 'package:furniture_shop_app/core/widgets/app_card.dart';
import '../../../../core/theme/app_colors.dart';

class SettingsSwitchTile extends StatelessWidget {
  final String label;
  final Function(bool) onChanged;
  final bool value;
  const SettingsSwitchTile({
    super.key,
    required this.label,
    required this.onChanged,
    this.value = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      height: 64,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: kBlackNunitoSmallTitleStyle.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          CupertinoSwitch(
            value: value,
            onChanged: onChanged,
            activeColor: AppColors.success,
          ),
        ],
      ),
    );
  }
}
