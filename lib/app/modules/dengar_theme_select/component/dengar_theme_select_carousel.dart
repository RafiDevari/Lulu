import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/dengar_theme_select_controller.dart';
import '../model/theme_model.dart';
import 'theme_card.dart';

class ThemeCarousel extends StatelessWidget {
  final List<ThemeModel> themes;

  const ThemeCarousel({
    super.key,
    required this.themes,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DengarThemeSelectController>();

    return PageView.builder(
      itemCount: themes.length,
      controller: PageController(viewportFraction: 0.85),
      itemBuilder: (context, index) {
        final theme = themes[index];

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: ThemeCard(
            theme: theme,
            onTap: () {
              controller.navigateToThemeDetail(theme.id);
            },
          ),
        );
      },
    );
  }
}
