import 'package:get/get.dart';
import '../modules/dengar/bindings/dengar_binding.dart';
import '../modules/dengar/views/dengar_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/game_select/bindings/game_select_binding.dart';
import '../modules/game_select/views/game_select_view.dart';
import 'app_routes.dart';
class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.GAME_SELECT,
      page: () => const GameSelectView(),
      binding: GameSelectBinding(),
    ),
    GetPage(
      name: Routes.DENGAR,
      page: () => const DengarView(),
      binding: DengarBinding(),
    ),
    
  ];
}