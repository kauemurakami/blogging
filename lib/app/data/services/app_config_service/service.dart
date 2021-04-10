import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:teste_eprhom/core/values/storage_keys.dart';

class AppConfigService extends GetxService {
  Future<AppConfigService> init() async {
    box = GetStorage();
    await box.writeIfNull(THEME, false);
    Get.changeTheme(box.read(THEME) ? ThemeData.dark() : ThemeData.light());
    return this;
  }

  GetStorage box;
  bool getTheme() => this.box.read(THEME);
  changeTheme(b) async {
    Get.changeTheme(b ? ThemeData.dark() : ThemeData.light());
    await this.box.write(THEME, b);
  }
}
