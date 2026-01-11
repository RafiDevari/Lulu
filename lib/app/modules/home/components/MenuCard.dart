import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/app_radius.dart';
import '../../../theme/app_spacing.dart';

class AppMenuCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final Color? backgroundColor; // Opsional, biar fleksibel
  final Color? iconColor;

  const AppMenuCard({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.backgroundColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.theme.colorScheme;
    const radius = AppRadius.lg;

    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: BoxDecoration(
          color: backgroundColor ?? colorScheme.surfaceVariant.withAlpha(80),
          borderRadius: radius,
          border: Border.all(
            color: colorScheme.outline.withAlpha(30),
          ),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: radius,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 32,
                color: iconColor ?? colorScheme.primary,
              ),
              const SizedBox(height: AppSpacing.sm),
              Text(
                label,
                style: context.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center, // Safety buat teks panjang
              ),
            ],
          ),
        ),
      ),
    );
  }
}