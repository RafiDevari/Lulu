// theme/ui_utils.dart
import 'package:get/get.dart';

class UIUtils {
  static const double baseWidth = 375.0;
  static double scale(double size) {
    double screenWidth = Get.width;
    return (screenWidth / baseWidth) * size;
  }
}