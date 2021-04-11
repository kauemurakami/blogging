import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/app/modules/profile/widgets/skills.dart';
import 'package:teste_eprhom/app/modules/profile/widgets/image_avatar.dart';
import 'package:teste_eprhom/app/modules/profile/widgets/title.dart';
import 'package:teste_eprhom/app/modules/profile/widgets/age.dart';
import 'package:teste_eprhom/app/modules/profile/widgets/buttons.dart';
import 'package:teste_eprhom/core/theme/text_theme.dart';
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
              TitleProfileWidget(),
              ImageAvatarWidget(),
              Text(this.controller.authService.user.value.autorNome,
                  style: profile_text),
              AgeWidget(),
              SkillsWidget(),
              ButtonsProfileWidget()
            ],
          ),
        ),
      ),
    );
  }
}
