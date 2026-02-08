import 'package:get/get.dart';
import '../../../routes/app_routes.dart';
import '../model/theme_model.dart';
import '../repository/dengar_theme_select_repository.dart';

class DengarThemeSelectController extends GetxController {
  final ThemeRepository _themeRepository = ThemeRepository();
  final RxList<ThemeModel> themes = <ThemeModel>[].obs;
  final RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadThemes();
  }

  Future<void> loadThemes() async {
    try {
      final result = await _themeRepository.loadThemes();
      themes.assignAll(result);

      // still printing if you want logs
      for (final theme in result) {
        print(
          'ThemeModel(id: ${theme.id}, title: ${theme.title}, thumbnail: ${theme.thumbnail})',
        );
      }
    } catch (e) {
      print('Error loading themes: $e');
    } finally {
      isLoading.value = false;
    }
  }

  void navigateToThemeDetail(String theme) {
    Get.toNamed(Routes.DENGAR_LEVEL_SELECT, arguments: theme);
  }
}
