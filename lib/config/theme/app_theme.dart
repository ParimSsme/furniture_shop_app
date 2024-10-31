import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../colors/furniture_colors.dart';

final ThemeData appThemeData = ThemeData(
  useMaterial3: true,
  unselectedWidgetColor: Colors.red,

  /// Icon Theme Data
  iconTheme: const IconThemeData (
    color: AppColors.iconColor
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
    selectedColor: AppColors.selectedChipColor,
    backgroundColor: AppColors.unselectedChipColor,
  ),

  listTileTheme: ListTileThemeData(
    tileColor: AppColors.cardColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          textStyle: const TextStyle(
            color: Colors.black,
          )
      ),
  ),
  cardTheme: const CardTheme(
    color: AppColors.cardColor,
    elevation: 5
  ),
  checkboxTheme: CheckboxThemeData(
    checkColor: WidgetStateProperty.all(Colors.white),
    side: const BorderSide(
      color: Colors.grey
    ),
    splashRadius: 40,
  ),
  colorScheme: ColorScheme.fromSeed(
    primary: FurnitureColors.primary,
    onPrimary: FurnitureColors.onPrimary,
    seedColor: FurnitureColors.seedColor,
    brightness: Brightness.light,
  ),
);
