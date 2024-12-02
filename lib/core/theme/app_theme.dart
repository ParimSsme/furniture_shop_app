import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_theme.dart';

final ThemeData appThemeData = ThemeData(
  useMaterial3: true,
  unselectedWidgetColor: Colors.red,

  /// Icon Theme Data
  iconTheme: const IconThemeData (
    color: AppColors.icon
  ),

  scaffoldBackgroundColor: AppColors.background,

  /// TabBar Theme
  tabBarTheme: TabBarTheme(
    labelStyle: kBlackNunitoSmallTitleStyle,
    unselectedLabelStyle: kGreyNunitoSmallTitleStyle,
    dividerColor: Colors.transparent,
    indicatorSize: TabBarIndicatorSize.label,
    indicator: BoxDecoration(
      color: AppColors.tabBarIndicator,
      borderRadius: BorderRadius.circular(4.0),
    ),
  ),

  /// Floating action button
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.white,
    elevation: 4,
    foregroundColor: Colors.grey.shade800
  ),

  /// AppBar Theme
  appBarTheme: AppBarTheme(
    color: Colors.transparent,
    elevation: 0,
    titleTextStyle: kBlackMerriweatherSmallTitleStyle,
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
    elevation: 15,
    shadowColor: AppColors.cardShadowColor
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
      textStyle: kTextButtonStyle,
      foregroundColor: AppColors.primary,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
    ),
  ),

  colorScheme: ColorScheme.fromSeed(
    primary: AppColors.primary,
    onPrimary: AppColors.onPrimary,
    seedColor: AppColors.accent,
    brightness: Brightness.light,
  ),
);
