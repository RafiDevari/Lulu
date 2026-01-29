import 'package:get/get.dart';
import '../controllers/dengar_theme_select_controller.dart';

class DengarThemeSelectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DengarThemeSelectController>(
          () => DengarThemeSelectController(),
    );
  }
}
