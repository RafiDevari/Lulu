import 'package:get/get.dart';
import '../controllers/dengar_controller.dart';
import 'package:flutter/material.dart';

class AnswerBoxes extends GetView<DengarController> {
  const AnswerBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final letters = controller.droppedLetters;

      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          letters.length,
              (index) => Padding(
            padding: const EdgeInsets.all(4),
            child: DragTarget<String>(
              onAccept: (data) {
                controller.placeLetter(data, index);
              },
              builder: (context, candidateData, rejectedData) {
                final currentLetter = letters[index];

                return Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: currentLetter != null
                      ? Draggable<String>(
                    data: currentLetter,
                    onDragStarted: () {
                      controller.removeLetter(index);
                    },
                    onDraggableCanceled: (_, __) {
                      controller.placeLetter(currentLetter, index);
                    },
                    feedback: Material(
                      color: Colors.transparent,
                      child: _dragLetter(currentLetter),
                    ),
                    child: Text(
                      currentLetter,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                      : const SizedBox(),
                );
              },
            ),
          ),
        ),
      );
    });
  }
}


Widget _letterBox(String letter) {
  return Material(
    color: Colors.transparent,
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

Widget _dragLetter(String letter) {
  return Container(
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
  );
}