import 'package:flutter/material.dart';
import 'package:lulu/app/theme/app_radius.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      background: AppColors.background,
    ),
    fontFamily: 'Comic Neue',
    textTheme: AppTextStyles.textTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: AppRadius.lg,
        ),
      ),
    ),

    scaffoldBackgroundColor: AppColors.background,
  );
}

