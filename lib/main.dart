import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_app/app/locales/locales.g.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      translationsKeys: AppTranslation.translations,
      locale: Get.deviceLocale,
      fallbackLocale: Locale('tr', 'TR'),
      supportedLocales: [Locale('tr', 'TR'), Locale('en', 'US')],
    ),
  );
}
