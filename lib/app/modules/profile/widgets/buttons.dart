import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/app/modules/profile/widgets/button_cv.dart';
import 'package:teste_eprhom/core/values/strings.dart';
import 'package:teste_eprhom/routes/pages.dart';

class ButtonsProfileWidget extends Container {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonCvWidget(
            callback: () => Get.toNamed(Routes.LINKEDIN), text: linkedin),
        ButtonCvWidget(callback: () => Get.toNamed(Routes.GIT), text: git),
        ButtonCvWidget(
            callback: () => Get.toNamed(Routes.MARKET),
            text: open_source_project),
      ],
    );
  }
}
