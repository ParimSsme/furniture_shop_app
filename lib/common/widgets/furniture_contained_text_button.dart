import 'package:flutter/material.dart';
import 'package:furniture_shop_app/config/theme/app_text_theme.dart';

class FurnitureContainedTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onClick;
  const FurnitureContainedTextButton({
    super.key,
    required this.text,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onClick,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.black),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      child: Text(
        text,
        style: kContainedButtonStyle,
      ),
    );
  }
}
