import 'package:flutter/cupertino.dart';

class AppSpacing {
  AppSpacing._();
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
}

class Gaps {
  Gaps._();
  static const vXs = SizedBox(height: AppSpacing.xs);
  static const vSm = SizedBox(height: AppSpacing.sm);
  static const vMd = SizedBox(height: AppSpacing.md);
  static const vLg = SizedBox(height: AppSpacing.lg);
  static const vXl = SizedBox(height: AppSpacing.xl);
  static const hXs = SizedBox(width: AppSpacing.xs);
  static const hSm = SizedBox(width: AppSpacing.sm);
  static const hMd = SizedBox(width: AppSpacing.md);
  static const hLg = SizedBox(width: AppSpacing.lg);
  static const hXl = SizedBox(width: AppSpacing.xl);
}