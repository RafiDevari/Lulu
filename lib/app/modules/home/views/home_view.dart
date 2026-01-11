import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lulu/app/modules/home/components/HomeHeader.dart';
import '../components/HomeContent.dart';
import '../../../theme/app_spacing.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(AppSpacing.md),
            children: [
              const HomeHeader(),
              const SizedBox(height: AppSpacing.lg),
              const HomeContent(),
            ],
        ),
      ),
    );
  }
}

