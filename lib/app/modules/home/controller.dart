import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/app/data/models/posts.dart';
import 'package:teste_eprhom/app/data/services/app_config_service/service.dart';
import 'package:teste_eprhom/app/data/services/auth_service/service.dart';
import 'package:teste_eprhom/app/modules/home/repository.dart';
import 'package:teste_eprhom/app/modules/home/widgets/add_post_succes_notify.dart';
import 'package:teste_eprhom/app/modules/home/widgets/bottom_sheet_post.dart';
import 'package:teste_eprhom/app/modules/home/widgets/minumun_caracteres.dart';
import 'package:teste_eprhom/app/modules/posts/controller.dart';
import 'package:teste_eprhom/core/values/strings.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class HomeController extends GetxController {
  final HomeRepository repository;

  final index = 0.obs;
  HomeController(this.repository);
  AppConfigService appConfigService;
  AuthService authService;

  @override
  void onInit() {
    this.authService = Get.find<AuthService>();
    this.appConfigService = Get.find<AppConfigService>();
    super.onInit();
  }

  addPost() {
    if (this.authService.user.value.texto == null ||
        this.authService.user.value.texto.length < 7) {
      showTopSnackBar(Get.overlayContext, MinumunCaracteresPushWidget());
    } else {
      final PostsController pc = Get.find<PostsController>();
      pc.updatePosts(this.authService.user);
    }
    showTopSnackBar(Get.overlayContext, AddPostNotifyWidget());

    Get.back();
  }

  changePage(i) => this.index.value = i;
  changeTheme(b) => this.appConfigService.changeTheme(b);
  onChangedPost(v) => this.authService.user.value.texto = v;
  onSavedPost(v) => this.authService.user.value.texto = v;
  validatePost(v) => v.length <= 380 ? null : overflow_text;

  openAddPost() {
    this.index.value = 0;
    Get.bottomSheet(BottomSheetAddPost());
  }
}
