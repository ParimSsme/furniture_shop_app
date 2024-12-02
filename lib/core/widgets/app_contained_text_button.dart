import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_theme.dart';

class AppContainedTextButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final EdgeInsetsGeometry? padding;
  final Color backgroundColor;
  const AppContainedTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.padding,
    this.backgroundColor = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: kTextButtonStyle,
          foregroundColor: kTextButtonStyle.color,
        padding: padding,
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
