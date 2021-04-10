import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/app/modules/home/controller.dart';
import 'package:teste_eprhom/core/values/colors.dart';
import 'package:teste_eprhom/core/values/strings.dart';

class PublishButton extends Container {
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      padding: const EdgeInsets.all(8.0),
      child: OutlineButton(
          hoverColor: mainColor,
          splashColor: mainColor,
          highlightedBorderColor: mainColor,
          highlightColor: mainColor,
          borderSide: BorderSide(
            color: Colors.white,
          ),
          onPressed: () => this.controller.addPost(),
          child: Text(
            publish,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
