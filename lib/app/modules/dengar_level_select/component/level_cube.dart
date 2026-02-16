import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_routes.dart';

class LevelCube extends StatelessWidget {
  final String id;
  final bool locked;
  final String title;

  const LevelCube({
    super.key,
    required this.id,
    required this.locked,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: locked? null: () {
          Get.toNamed(Routes.DENGAR,arguments: title);
        },
        child: Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: locked ? Colors.grey.shade400 : Colors.blue,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(2, 4),
              )
            ],
          ),
          alignment: Alignment.center,
          child: locked
              ? const Icon(
            Icons.lock_outline,
            color: Colors.white,
            size: 30,
          )
              : Text(
            id,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
