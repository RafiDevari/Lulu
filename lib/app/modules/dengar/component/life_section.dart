import 'package:get/get.dart';
import '../controllers/dengar_controller.dart';
import 'package:flutter/material.dart';

class LifeSection extends GetView<DengarController> {
  const LifeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Obx(() => Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          controller.lifes.value,
              (index) => const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 24,
            ),
          ),
        ),
      )),
    );
  }
}