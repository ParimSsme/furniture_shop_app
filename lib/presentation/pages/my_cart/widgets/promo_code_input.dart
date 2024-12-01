import 'package:flutter/material.dart';

class PromoCodeInput extends StatelessWidget {
  const PromoCodeInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      shadowColor: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(20),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: IconButton(
            padding: const EdgeInsets.all(18),
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
            ),
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(const Color(0xff242424)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
          ),
          hintText: 'Enter your promo code',
          fillColor: Colors.white,
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(color: Colors.white, width: 3.0),
          ),
        ),
      ),
    );
  }
}