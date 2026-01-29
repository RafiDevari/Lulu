import 'package:get/get.dart';

import '../controllers/dengar_controller.dart';

class DengarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DengarController>(
          () => DengarController(),
    );
  }
}
