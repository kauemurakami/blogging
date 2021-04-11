import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:teste_eprhom/app/modules/home/controller.dart';
import 'package:teste_eprhom/core/theme/text_theme.dart';
import 'package:teste_eprhom/core/values/strings.dart';
import '../widgets/add_post_form.dart';

class BottomSheetAddPost extends Container {
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GlassmorphicContainer(
          width: Get.width,
          height: Get.height / 2,
          borderRadius: 8.0,
          blur: 20,
          alignment: Alignment.bottomCenter,
          border: 2,
          linearGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFffffff).withOpacity(0.1),
                Color(0xFFFFFFFF).withOpacity(0.05),
              ],
              stops: [
                0.1,
                1,
              ]),
          borderGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFffffff).withOpacity(0.5),
              Colors.black.withOpacity(0.6),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  create_publish,
                  style: create_publish_style,
                ),
              ),
              AddPostForm()
            ],
          )),
    );
  }
}
