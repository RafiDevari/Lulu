import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/dengar_theme_select_controller.dart';

class DengarThemeSelectView extends GetView<DengarThemeSelectController> {
  const DengarThemeSelectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'DengarThemeSelect',
          style: context.textTheme.headlineLarge,
        ),
      ),
    );
  }
}

