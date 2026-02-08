import 'dart:convert';
import 'package:flutter/services.dart';
import '../model/theme_model.dart';

class ThemeRepository {
  Future<List<ThemeModel>> loadThemes() async {
    final jsonString = await rootBundle.loadString(
      'assets/datas/dengar/theme.json',
    );

    final List decoded = jsonDecode(jsonString);
    return decoded
        .map((e) => ThemeModel.fromJson(e))
        .toList();
  }
}
