import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../shared/component/card/card_button.dart';
import '../../../theme/app_spacing.dart';
import '../controllers/home_controller.dart';

class HomeContent extends GetView<HomeController> {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      mainAxisSpacing: AppSpacing.md,
      crossAxisSpacing: AppSpacing.md,
      childAspectRatio: 1.1,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        CardButton(
          icon: Icons.games_rounded,
          label: 'hear'.tr,
          onTap: () => controller.toDengar(),
        ),
        CardButton(
          icon: Icons.emoji_events_rounded,
          label: 'events'.tr,
          onTap: () => controller.onTap(),
        ),
        CardButton(
          icon: Icons.people_rounded,
          label: 'community'.tr,
          onTap: () => controller.onTap(),
        ),
        CardButton(
          icon: Icons.settings_rounded,
          label: 'settings'.tr,
          onTap: () => controller.onTap(),
        ),

      ],
    );
  }
}