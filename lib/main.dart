import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/app/modules/splash/binding.dart';
import 'package:teste_eprhom/app/modules/splash/page.dart';
import 'package:teste_eprhom/core/theme/app_theme.dart';
import 'package:teste_eprhom/routes/pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.SPLASH,
    defaultTransition: Transition.fade,
    theme: appThemeData,
    initialBinding: SplashBinding(),
    getPages: AppPages.pages,
    home: SplashPage(),
  ));
}
