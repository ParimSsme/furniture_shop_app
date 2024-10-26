import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSnackbar {
  /// Shows a custom snack bar with the specified title and message.
  static void show({
    required String title,
    required String message,
    ContentType contentType = ContentType.warning
  }) {
    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: title,
        message: message,
        contentType: contentType,
      ),
    );

    final context = Get.context;
    if (context != null) {
      ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
    }
  }

  /// Convenience method for an error snack bar.
  static void showError({
    required String message,
  }) {
    show(
      title: 'Failed',
      message: message,
      contentType: ContentType.failure,
    );
  }

  /// Convenience method for a success snack bar.
  static void showSuccess({
    required String message,
  }) {
    show(
      title: 'Success',
      message: message,
      contentType: ContentType.success,
    );
  }

  /// Convenience method for an info snack bar.
  static void showWarning({
    required String message,
  }) {
    show(
      title: 'Warning',
      message: message,
      contentType: ContentType.warning,
    );
  }
}