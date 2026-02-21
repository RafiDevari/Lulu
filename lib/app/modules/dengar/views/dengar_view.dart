import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../shared/component/app_bar/app_bar_back_with_confirmation.dart';
import '../component/answer_boxes.dart';
import '../component/header.dart';
import '../component/letter_option.dart';
import '../controllers/dengar_controller.dart';

class DengarView extends GetView<DengarController> {
  const DengarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBackConfirm(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const DengarHeader(),
              const SizedBox(height: 24),
              const AnswerBoxes(),
              const SizedBox(height: 32),
              const LetterOptions(),
              const SizedBox(height: 32),

            ],
          ),
        ),
      ),
    );
  }
}