import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  final String title;
  final String message;
  final List<Widget>? actions;
  final Widget? content; /// Optional custom content instead of a message
  final EdgeInsetsGeometry contentPadding; // Padding inside the dialog

  const AppDialog({
    Key? key,
    required this.title,
    this.message = '',
    this.actions,
    this.content,
    this.contentPadding = const EdgeInsets.all(16.0), // Default padding
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      content: content ??
          Text(
            message,
            style: const TextStyle(fontSize: 16),
          ),
      contentPadding: contentPadding,
      actions: actions,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0), // Rounded corners
      ),
    );
  }
}