import 'package:get/get.dart';

import '../model/level_model.dart';
import '../repository/repository.dart';

class DengarLevelSelectController extends GetxController {
  late final String themeId;
  final LevelRepository _levelRepository = LevelRepository();
  final RxList<LevelModel> levels = <LevelModel>[].obs;


  @override
  void onInit() {
    super.onInit();
    themeId = Get.arguments ?? "animal";
    loadThemes();
  }

  Future<void> loadThemes() async {
    try {
      final result = await _levelRepository.loadThemes(themeId);
      levels.assignAll(result);

      for (final theme in result) {
        print(
          'ThemeModel(id: ${theme.level}, title: ${theme.title}, thumbnail: ${theme.thumbnail}, locked: ${theme.locked})',
        );
      }
    } catch (e) {
      print('Error loading themes: $e');
    }
  }

  void onTap() {
    print('Tap with themeId: $themeId');
  }
}
