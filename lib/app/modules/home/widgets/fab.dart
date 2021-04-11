import 'package:flutter/material.dart';
import 'package:teste_eprhom/core/values/colors.dart';
import '../controller.dart';
import 'package:get/get.dart';

class FabWidget extends Container {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: mainColor,
        child: Icon(
          Icons.add,
        ),
        onPressed: () => this.controller.openAddPost());
  }
}
