import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static const TextTheme textTheme = TextTheme(
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    labelLarge: TextStyle(
      fontSize: 64,
      fontWeight: FontWeight.w700,
    ),
  );
}
