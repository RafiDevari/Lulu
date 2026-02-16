import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../shared/component/app_bar/app_bar_back.dart';
import '../controllers/dengar_level_select_controller.dart';
import '../component/level_cube.dart';


class DengarLevelSelectView extends GetView<DengarLevelSelectController> {
  const DengarLevelSelectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarBack(),
      body: Obx(
            () => GridView.builder(
          padding: const EdgeInsets.all(24),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: controller.levels.length,
          itemBuilder: (context, index) {
            final level = controller.levels[index];
            return LevelCube(
              id: level.level.toString(),
              locked: level.locked,
              title: level.title
            );
          },
        ),
      ),
    );
  }
}
