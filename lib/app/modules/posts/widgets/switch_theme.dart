import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:teste_eprhom/core/values/colors.dart';
import '../controller.dart';

class SwitchThemeWidget extends Container {
  final controller = Get.find<PostsController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.0,
      margin: EdgeInsets.only(top: 8.0),
      child: LiteRollingSwitch(
        textOff: 'Dark',
        textOn: 'Ligth',
        onChanged: (b) => this.controller.changeTheme(b),
        colorOn: mainColor,
        colorOff: accentColor,
        iconOn: Icons.brightness_2,
        iconOff: Icons.brightness_6_outlined,
        value: this.controller.appConfigService.getTheme(),
      ),
    );
  }
}
