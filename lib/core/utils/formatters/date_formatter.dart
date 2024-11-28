import 'package:flutter/services.dart';

class DateFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Remove all non-digit characters
    String actualText = newValue.text.replaceAll(RegExp(r'\D'), "");

    // Apply the date formatting
    String newText = "";
    for (int i = 0; i < actualText.length; i++) {
      if (i == 2 && actualText.length > 2) {
        newText += '/'; // Add slash after MM
      }
      newText += actualText[i];
    }

    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}

