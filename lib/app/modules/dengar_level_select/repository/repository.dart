import 'dart:convert';
import 'package:flutter/services.dart';

import '../model/level_model.dart';

class LevelRepository {
  Future<List<LevelModel>> loadThemes(String theme) async {
    final jsonString = await rootBundle.loadString(
      'assets/datas/dengar/level/$theme.json',
    );

    final List decoded = jsonDecode(jsonString);
    return decoded
        .map((e) => LevelModel.fromJson(e))
        .toList();
  }
}
