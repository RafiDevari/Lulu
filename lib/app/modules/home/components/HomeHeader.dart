import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../shared/utils/ui_utils.dart';
import '../../../theme/app_spacing.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.theme.colorScheme;
    final textTheme = context.textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: colorScheme.secondaryContainer.withAlpha(50),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'whatDoYouWantToPlay'.tr,
              textAlign: TextAlign.left,
              style: textTheme.headlineSmall?.copyWith(
                color: colorScheme.onSecondaryContainer,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          _MascotImage(),
        ],
      ),
    );
  }
}

class _MascotImage extends StatelessWidget {
  const _MascotImage();

  @override
  Widget build(BuildContext context) {
    final size = UIUtils.scale(80);

    return SizedBox(
      width: size,
      height: size,
      child: SvgPicture.asset(
        'assets/images/mascot.svg',
        fit: BoxFit.contain,
      ),
    );
  }
}