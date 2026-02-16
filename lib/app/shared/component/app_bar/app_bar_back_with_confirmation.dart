import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarBackConfirm extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final String message;

  const AppBarBackConfirm({
    super.key,
    this.title = "Are you sure?",
    this.message = "Do you want to go back?",
  });

  void _confirmBack() {
    Get.dialog(
      AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Get.back(), // close dialog
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.back(); // close dialog
              Get.back(); // go back page
            },
            child: const Text("Yes"),
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: _confirmBack,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
