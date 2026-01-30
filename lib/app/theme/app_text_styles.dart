import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static const TextTheme textTheme = TextTheme(
    // Headlines (pages, dialogs)
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      letterSpacing: -0.5,
    ),
    headlineMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),

    // Titles (sections, cards)
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),

    // Body text
    bodyLarge: TextStyle(
      fontSize: 16,
      height: 1.5,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      height: 1.4,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      height: 1.3,
      color: Colors.grey,
    ),

    // Labels (buttons, captions)
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
    ),
  );
}
