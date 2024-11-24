import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_theme.dart';

class AppContainedTextButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  const AppContainedTextButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: kTextButtonStyle,
          foregroundColor: kTextButtonStyle.color,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10)
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
