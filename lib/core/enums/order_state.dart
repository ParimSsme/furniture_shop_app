import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

enum OrderState {
  delivered,
  processing,
  cancelled,
}

extension OrderStateExtension on OrderState {
  String get text {
    switch (this) {
      case OrderState.delivered: return 'Delivered';
      case OrderState.processing: return 'Processing';
      case OrderState.cancelled: return 'Cancelled';
    }
  }

  Color get color {
    switch (this) {
      case OrderState.delivered: return AppColors.success;
      case OrderState.processing: return AppColors.textPrimary;
      case OrderState.cancelled: return AppColors.error;
    }
  }

  IconData get icon {
    switch (this) {
      case OrderState.delivered: return Icons.check_circle;
      case OrderState.processing: return Icons.access_time_filled_rounded;
      case OrderState.cancelled: return Icons.cancel;
    }
  }
}