import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class AppCard extends StatelessWidget {
  final Widget? child;

  const AppCard({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: AppColors.card,
        boxShadow: [
          BoxShadow(
            color: AppColors.cardShadowColor,
            offset: Offset(0, 7),
            blurRadius: 30.0,
          ),
        ],
      ),
      child: child, // Add child content if provided
    );
  }
}
