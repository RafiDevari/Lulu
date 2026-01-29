import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/dengar_level_select_controller.dart';

class DengarLevelSelectView extends GetView<DengarLevelSelectController> {
  const DengarLevelSelectView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'DengarLevelSelect',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
