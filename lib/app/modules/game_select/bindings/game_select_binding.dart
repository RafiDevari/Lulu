import 'package:get/get.dart';
import '../controllers/game_select_controller.dart';

class GameSelectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GameSelectController>(
      () => GameSelectController(),
    );
  }
}
