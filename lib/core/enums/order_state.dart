import 'dart:ui';
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

  Color get textColor {
    switch (this) {
      case OrderState.delivered: return AppColors.success;
      case OrderState.processing: return AppColors.textPrimary;
      case OrderState.cancelled: return AppColors.error;
    }
  }
}