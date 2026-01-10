import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../theme/app_spacing.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Text('Home Text Style',style: Theme.of(context).textTheme.labelLarge)
        ),
      ),
    );
  }
}
