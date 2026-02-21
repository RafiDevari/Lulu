import 'package:get/get.dart';
import '../controllers/dengar_controller.dart';
import 'package:flutter/material.dart';


class LetterOptions extends GetView<DengarController> {
  const LetterOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return DragTarget<String>(
      onAccept: (letter) {
        if (!controller.letterOptions.contains(letter)) {
          controller.letterOptions.add(letter);
        }
      },
      builder: (context, candidateData, rejectedData) {
        return Obx(() {
          return Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 10,
            children: controller.letterOptions.map((letter) {
              return Draggable<String>(
                data: letter,
                feedback: _letterBox(letter),
                childWhenDragging:
                _letterBox(letter, isFaded: true),
                child: _letterBox(letter),
              );
            }).toList(),
          );
        });
      },
    );
  }

  Widget _letterBox(String letter, {bool isFaded = false}) {
    return Opacity(
      opacity: isFaded ? 0.4 : 1,
      child: Container(
        width: 50,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          letter,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}