import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lulu/app/shared/component/app_bar/app_bar_back_with_confirmation.dart';
import '../controllers/dengar_controller.dart';

class DengarView extends GetView<DengarController> {
  const DengarView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarBackConfirm(),
      body: Center(
        child: Text(
          'Hello World',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
