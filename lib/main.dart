import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lulu/app/shared/text/app_language.dart';

import 'app/routes/app_pages.dart';
import 'app/theme/app_theme.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      translations: AppLanguage(),
      locale: const Locale('id', 'ID'),
      theme: AppTheme.light,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
