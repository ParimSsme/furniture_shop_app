import 'package:flutter/material.dart';
import 'package:furniture_shop_app/config/colors/furniture_colors.dart';

class AuthTextField extends StatelessWidget {
  final String label;
  final String hint;
  final Widget? suffix;
  final TextEditingController controller;
  final bool isPassword;
  const AuthTextField({
    super.key,
    required this.label,
    required this.hint,
    this.suffix,
    required this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        suffixIcon: suffix,
        contentPadding: const EdgeInsets.symmetric(vertical: 10),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: FurnitureColors.grey),
        ),
      ),
    );
  }
}
