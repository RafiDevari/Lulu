import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/dengar_theme_select_controller.dart';
import '../model/theme_model.dart';

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
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () {
              controller.navigateToThemeDetail(theme.id);
            },
            child: Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                      child: Image.network(
                        theme.thumbnail,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) =>
                        const Icon(Icons.image_not_supported),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          theme.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text('ID: ${theme.id}'),
                      ],
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

