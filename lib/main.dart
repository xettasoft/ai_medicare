
import 'package:ai_medicare/common/messages.dart';
import 'package:ai_medicare/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(GetMaterialApp(
    translations: Messages(), // your translations
    locale: const Locale(
        'en', 'UK'), // translations will be displayed in that locale
    fallbackLocale: const Locale('en', 'UK'),
    title: "appName".tr,
    debugShowCheckedModeBanner: false,
    themeMode: ThemeMode.light,
    initialRoute: '/',
    getPages: makeRoute(),
  ));
}
