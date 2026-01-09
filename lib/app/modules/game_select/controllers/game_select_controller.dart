import 'package:get/get.dart';

class GameSelectController extends GetxController {
  final games = [
    {'name': 'Tracing', 'route': '/tracing'},
    {'name': 'Spelling', 'route': '/spelling'},
  ];

  void toGame(String route) {
    Get.toNamed(route);
  }
}
