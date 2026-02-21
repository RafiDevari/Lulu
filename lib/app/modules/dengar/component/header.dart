import 'package:get/get.dart';
import '../controllers/dengar_controller.dart';
import 'package:flutter/material.dart';

class DengarHeader extends GetView<DengarController> {
  const DengarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: IconButton(
        icon: const Icon(Icons.volume_up, size: 40),
        onPressed: controller.speakTitle,
      ),
    );
  }
}