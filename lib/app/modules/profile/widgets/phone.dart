import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller.dart';
import 'package:teste_eprhom/core/values/strings.dart';
import 'package:teste_eprhom/core/values/colors.dart';
import 'package:teste_eprhom/core/theme/text_theme.dart';

class PhoneWidget extends Container {
  final controller = Get.find<ProfileController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contato  ',
              style: TextStyle(
                  color: mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            Text(
              phone,
              style: profile_text,
            ),
            IconButton(
                icon: Icon(
                  Icons.phone,
                  color: Colors.greenAccent[700],
                ),
                onPressed: () async => await this.controller.call())
          ],
        ),
      ],
    );
  }
}
