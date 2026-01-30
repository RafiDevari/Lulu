import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarBack extends StatelessWidget implements PreferredSizeWidget {
  const AppBarBack({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: Get.back,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
