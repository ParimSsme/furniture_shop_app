import 'package:flutter/material.dart';
import 'package:furniture_shop_app/config/colors/furniture_colors.dart';

class AuthTextField extends StatelessWidget {
  final String label;
  final String hint;
  final Widget? suffix;
  const AuthTextField({
    super.key,
    required this.label,
    required this.hint,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        suffixIcon: suffix,
        contentPadding: const EdgeInsets.symmetric(vertical: 30),
        // errorText: '_errorText',
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: FurnitureColors.grey),
        ),
        // errorBorder: const UnderlineInputBorder(
        //   borderSide: BorderSide(color: Colors.yellow, width: 5),
        // ),
        // focusedErrorBorder: const UnderlineInputBorder(
        //   borderSide: BorderSide(color: Colors.red, width: 5),
        // ),
      ),
    );
  }
}
