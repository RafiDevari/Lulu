import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/app_radius.dart';
import '../../../theme/app_spacing.dart';

class MenuCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final Color? backgroundColor;
  final Color? iconColor;

  const MenuCard({
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
    return LayoutBuilder(
      builder: (context, constraints) {
        final iconSize = constraints.maxWidth * 0.4;

        return Material(
          color: Colors.transparent,
          child: Ink(
            decoration: BoxDecoration(
              color: backgroundColor ?? colorScheme.surfaceVariant,
              borderRadius: AppRadius.lg,
              border: Border.all(
                color: colorScheme.outline,
              ),
            ),
            child: InkWell(
              onTap: onTap,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: iconSize,
                    width: iconSize,
                    child: FittedBox(
                      child: Icon(
                        icon,
                        color: iconColor ?? colorScheme.primary,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppSpacing.sm),
                    child: Text(
                      label,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}