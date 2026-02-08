import 'package:get/get.dart';

class DengarLevelSelectController extends GetxController {
  late final String themeId;

  @override
  void onInit() {
    super.onInit();
    themeId = Get.arguments;
  }

  void onTap() {
    print('Tap with themeId: $themeId');
  }
}
