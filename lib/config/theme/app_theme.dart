import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../colors/furniture_colors.dart';
import 'app_text_theme.dart';

final ThemeData appThemeData = ThemeData(
  useMaterial3: true,
  unselectedWidgetColor: Colors.red,

  /// Choice Chip Theme Data
  chipTheme: ChipThemeData(
    showCheckmark: false,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
      side: const BorderSide(
        color: Colors.transparent,
      ),
    ),
    selectedColor: AppColors.selectedChipColor,
    backgroundColor: AppColors.unselectedChipColor,
  ),

  colorScheme: ColorScheme.fromSeed(
    primary: FurnitureColors.primary,
    onPrimary: FurnitureColors.onPrimary,
    // primaryContainer: FurnitureColors.primaryContainer,
    // onPrimaryContainer: FurnitureColors.onPrimaryContainer,
    // secondary: FurnitureColors.secondary,
    // onSecondary: FurnitureColors.onSecondary,
    // secondaryContainer: FurnitureColors.secondaryContainer,
    // onSecondaryContainer: FurnitureColors.onSecondaryContainer,
    // tertiary: FurnitureColors.tertiary,
    // onTertiary: FurnitureColors.onTertiary,
    // tertiaryContainer: FurnitureColors.tertiaryContainer,
    // onTertiaryContainer: FurnitureColors.onTertiaryContainer,
    // error: FurnitureColors.error,
    // onError: FurnitureColors.onError,
    // errorContainer: FurnitureColors.errorContainer,
    // onErrorContainer: FurnitureColors.onErrorContainer,
    // outline: FurnitureColors.outline,
    // outlineVariant: FurnitureColors.outlineVariant,
    // background: FurnitureColors.background,
    // onBackground: FurnitureColors.onBackground,
    // surface: FurnitureColors.surface,
    // onSurface: FurnitureColors.onSurface,
    // surfaceVariant: FurnitureColors.surfaceVariant,
    // onSurfaceVariant: FurnitureColors.onSurfaceVariant,
    // inverseSurface: FurnitureColors.inverseSurface,
    // onInverseSurface: FurnitureColors.onInverseSurface,
    // inversePrimary: FurnitureColors.inversePrimary,
    // shadow: FurnitureColors.shadow,
    // scrim: FurnitureColors.scrim,
    // surfaceTint: FurnitureColors.surfaceTint,
    seedColor: FurnitureColors.seedColor,
    brightness: Brightness.light,
  ),
);
