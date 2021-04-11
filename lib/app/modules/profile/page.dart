import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/core/theme/text_theme.dart';
import 'package:teste_eprhom/core/values/strings.dart';
import 'controller.dart';

class ProfilePage extends GetView {
  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      profile,
                      style: title_style,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/avatar.png'),
                        fit: BoxFit.cover)),
              ),
              Text(
                this.controller.authService.user.value.autorNome,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
