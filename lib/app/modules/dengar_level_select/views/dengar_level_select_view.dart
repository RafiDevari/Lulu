import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../shared/component/app_bar/app_bar_back.dart';
import '../controllers/dengar_level_select_controller.dart';

class DengarLevelSelectView extends GetView<DengarLevelSelectController> {
  const DengarLevelSelectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarBack(),
      body: Center(
        child: Text(
          controller.themeId,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
