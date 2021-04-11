import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:teste_eprhom/core/values/colors.dart';
import 'package:teste_eprhom/core/values/strings.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';

class EditPostNotifyWidget extends GlassmorphicContainer {
  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
        width: Get.width - 100.0,
        blur: 20,
        height: 80.0,
        borderRadius: 12.0,
        borderGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFffffff).withOpacity(0.5),
            Colors.black.withOpacity(0.6),
          ],
        ),
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
        border: 0,
        child: CustomSnackBar.success(
          icon: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Icon(
              Icons.edit,
              color: mainColor,
              size: 80.0,
            ),
          ),
          backgroundColor: Colors.transparent,
          iconRotationAngle: 0,
          message: edited_post,
        ));
  }
}
