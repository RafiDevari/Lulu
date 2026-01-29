import 'package:get/get.dart';
import '../controllers/dengar_level_select_controller.dart';

class DengarLevelSelectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DengarLevelSelectController>(
          () => DengarLevelSelectController(),
    );
  }
}
