import 'package:flutter/services.dart';

class PaymentCardFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Remove all non-digit characters
    String actualText = newValue.text.replaceAll(RegExp(r'\D'), "");

    // Apply formatting: add a space every 4 digits
    String newText = "";
    for (int i = 0; i < actualText.length; i++) {
      if (i > 0 && i % 4 == 0) {
        newText += ' ';
      }
      newText += actualText[i];
    }

    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}
