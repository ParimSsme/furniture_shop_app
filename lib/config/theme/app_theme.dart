import 'package:flutter/material.dart';
import 'package:furniture_shop_app/config/theme/app_text_theme.dart';
import '../../core/constants/app_colors.dart';

final ThemeData appThemeData = ThemeData(
  useMaterial3: true,
  unselectedWidgetColor: Colors.red,

  /// Icon Theme Data
  iconTheme: const IconThemeData (
    color: AppColors.icon
  ),

  /// Choice Chip Theme Data
  chipTheme: ChipThemeData(
    showCheckmark: false,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
      side: const BorderSide(
        color: Colors.transparent,
      ),
    ),
    selectedColor: AppColors.selectedChip,
    backgroundColor: AppColors.unselectedChip,
  ),

  /// List Tile Theme Data
  listTileTheme: ListTileThemeData(
    tileColor: AppColors.card,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  ),

  ///  Outlined Button Theme Data
  outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          textStyle: const TextStyle(
            color: Colors.black,
          )
      ),
  ),

  /// Card Theme Data
  cardTheme: const CardTheme(
    color: AppColors.card,
    elevation: 5
  ),

  /// Check Box Theme Data
  checkboxTheme: CheckboxThemeData(
    checkColor: WidgetStateProperty.all(Colors.white),
    side: const BorderSide(
      color: Colors.grey
    ),
    splashRadius: 40,
  ),

  /// Text Button Theme Data
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      backgroundColor: AppColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      textStyle: kTextButtonStyle,
      foregroundColor: kTextButtonStyle.color,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10)
    ),
  ),

  colorScheme: ColorScheme.fromSeed(
    primary: AppColors.primary,
    onPrimary: AppColors.onPrimary,
    seedColor: AppColors.accent,
    brightness: Brightness.light,
  ),
);
