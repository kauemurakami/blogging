import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:teste_eprhom/core/values/storage_keys.dart';

class AppConfigService extends GetxService {
  Future<AppConfigService> init() async {
    box = GetStorage();
    await box.writeIfNull(THEME, false);
    return this;
  }

  GetStorage box;
  RxBool themeIsDark;
  bool getTheme() => this.box.read(THEME);
  changeTheme(b) async {
    Get.changeTheme(b ? ThemeData.dark() : ThemeData.light());
    await this.box.write(THEME, b);
  }
}
