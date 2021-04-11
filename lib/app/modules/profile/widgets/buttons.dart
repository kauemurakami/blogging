import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/app/modules/profile/widgets/button_cv.dart';
import 'package:teste_eprhom/core/values/strings.dart';
import 'package:teste_eprhom/core/values/colors.dart';
import 'package:teste_eprhom/routes/pages.dart';

class ButtonsProfileWidget extends Container {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            more_information,
            style: TextStyle(
                color: mainColor, fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
        ),
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
