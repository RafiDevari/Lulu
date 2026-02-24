import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lulu/app/shared/component/button/submit_button.dart';
import '../../../shared/component/app_bar/app_bar_back_with_confirmation.dart';
import '../../../theme/app_spacing.dart';
import '../component/answer_boxes.dart';
import '../component/header.dart';
import '../component/letter_option.dart';
import '../component/life_section.dart';
import '../controllers/dengar_controller.dart';

class DengarView extends GetView<DengarController> {
  const DengarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBackConfirm(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: ListView(
            padding: const EdgeInsets.all(AppSpacing.md),
            children: [
              const LifeSection(),
              Gaps.vLg,
              const DengarHeader(),
              Gaps.vLg,
              const AnswerBoxes(),
              Gaps.vLg,
              const LetterOptions(),
              Gaps.vLg,
              SubmitButton(onPressed: controller.submit)
            ],
          ),
        ),
      ),
    );
  }
}