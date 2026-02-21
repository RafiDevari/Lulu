import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'dart:math';

class DengarController extends GetxController {
  late final String title;
  final FlutterTts _flutterTts = FlutterTts();

  RxList<String?> droppedLetters = <String?>[].obs;
  RxList<String> letterOptions = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    title = (Get.arguments ?? "default").toUpperCase();

    droppedLetters.value = List.generate(title.length, (_) => null);

    _generateLetterOptions();
  }

  void _generateLetterOptions() {
    final letters = title.split('');
    final random = Random();

    // Add extra random letters
    const alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    while (letters.length < title.length + 5) {
      letters.add(alphabet[random.nextInt(alphabet.length)]);
    }

    letters.shuffle();
    letterOptions.value = letters;
  }

  void removeLetter(int index) {
    droppedLetters[index] = null;
  }

  Future<void> speakTitle() async {
    if (title.isNotEmpty) {
      await _flutterTts.setLanguage("id-ID");
      await _flutterTts.setPitch(1.0);
      await _flutterTts.speak(title);
    }
  }

  void placeLetter(String letter, int index) {
    final existingLetter = droppedLetters[index];

    // If same letter dropped, do nothing
    if (existingLetter == letter) return;

    // If there is already a letter, return it to options
    if (existingLetter != null) {
      letterOptions.add(existingLetter);
    }

    // Remove the new letter from options
    letterOptions.remove(letter);

    // Place new letter
    droppedLetters[index] = letter;
  }

  @override
  void onClose() {
    _flutterTts.stop();
    super.onClose();
  }
}