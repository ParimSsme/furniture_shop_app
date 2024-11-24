import 'package:flutter/material.dart';
import '../theme/app_text_theme.dart';

class AppCheckBox extends StatelessWidget {
  final bool value;
  final Function(bool?) onChanged;
  final String label;
  const AppCheckBox({
    super.key,
    required this.value,
    required this.onChanged,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.4,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            activeColor: const Color(0xff222222),
          ),
        ),
        Text(label, style: kBlackNunitoSmallTitleStyle.copyWith(
          color: value ? Colors.black : Colors.grey,
        ),)
      ],
    );
  }
}
