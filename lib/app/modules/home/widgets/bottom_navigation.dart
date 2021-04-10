import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:teste_eprhom/core/values/colors.dart';
import '../controller.dart';

class BottomNavigateWidget extends Container {
  final controller = Get.find<HomeController>();
  final iconList = <IconData>[Icons.home, Icons.group, Icons.person];

  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedBottomNavigationBar(
        icons: this.iconList,
        activeIndex: this.controller.index.value,
        backgroundColor: this.controller.appConfigService.getTheme()
            ? Colors.white
            : accentColor,
        gapLocation: GapLocation.end,
        activeColor: this.controller.appConfigService.getTheme()
            ? accentColor
            : Colors.white,
        splashColor: mainColor,
        leftCornerRadius: 16.0,
        inactiveColor: Colors.grey,
        notchSmoothness: NotchSmoothness.defaultEdge,
        onTap: (i) => this.controller.changePage(i)));
  }
}
