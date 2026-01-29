import 'package:get/get.dart';
import '../../../routes/app_routes.dart';

class HomeController extends GetxController {
  void toDengar() {
    Get.toNamed(Routes.DENGAR_THEME_SELECT);
  }

  void onTap(){
    print("HomeController onTap");
  }
}
