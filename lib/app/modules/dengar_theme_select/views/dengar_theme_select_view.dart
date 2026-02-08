import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/component/app_bar/app_bar_back.dart';
import '../component/dengar_theme_select_carousel.dart';
import '../controllers/dengar_theme_select_controller.dart';

class DengarThemeSelectView extends GetView<DengarThemeSelectController> {
  const DengarThemeSelectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarBack(),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.themes.isEmpty) {
          return const Center(child: Text('No themes found'));
        }

        return ThemeCarousel(
          themes: controller.themes,
        );
      }),
    );
  }
}
