import 'package:flutter/cupertino.dart';

import '../../../../core/theme/app_text_theme.dart';

class PriceRow extends StatelessWidget {
  final String label;
  final num value;
  const PriceRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: kGreyNunitoSmallTitleStyle.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        Text(
          '\$ $value',
          style: kBlackNunitoMediumTitleStyle.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}
