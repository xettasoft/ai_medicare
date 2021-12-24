import 'package:ai_medicare/common/app_theme.dart';
import 'package:ai_medicare/common/messages.dart';
import 'package:ai_medicare/route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'controllers/theme_controller.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  WidgetsFlutterBinding.ensureInitialized();
  Get.lazyPut<ThemeController>(() => ThemeController());
  ThemeController.to.getThemeModeFromPreferences();
  runApp(GetMaterialApp(
    translations: Messages(),
    locale: const Locale('en', 'UK'),
    fallbackLocale: const Locale('en', 'UK'),
    title: "appName".tr,
    debugShowCheckedModeBanner: false,
    themeMode: ThemeController.to.themeMode,
    darkTheme: AppTheme.darkTheme,
    theme: AppTheme.lightTheme,
    initialRoute: '/',
    getPages: makeRoute(),
  ));
}
