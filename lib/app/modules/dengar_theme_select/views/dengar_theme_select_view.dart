import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/dengar_theme_select_controller.dart';

class DengarThemeSelectView extends GetView<DengarThemeSelectController> {
  const DengarThemeSelectView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'DengarThemeSelect',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

// TODO: Buat Card Sederhana dalam bentuk carousel, pass id ke theme yang diopilih dan arahkan ke level page
