import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/app/data/models/posts.dart';
import 'package:teste_eprhom/app/data/providers/api/api.dart';
import 'package:teste_eprhom/app/data/services/app_config_service/service.dart';
import 'package:teste_eprhom/app/data/services/auth_service/service.dart';
import 'package:teste_eprhom/app/modules/posts/repository.dart';
import 'package:teste_eprhom/app/modules/posts/widgets/bottom_sheet_post.dart';
import 'package:teste_eprhom/app/modules/posts/widgets/bottom_sheet_edit_post.dart';
import 'package:teste_eprhom/app/modules/posts/widgets/minumun_caracteres.dart';
import 'package:teste_eprhom/app/modules/posts/widgets/add_post_succes_notify.dart';
import 'package:teste_eprhom/app/modules/posts/widgets/notify_delete_post.dart';
import 'package:teste_eprhom/app/modules/posts/widgets/notify_edit_post.dart';
import 'package:teste_eprhom/core/utils/connectivity.dart';
import 'package:teste_eprhom/core/values/colors.dart';
import 'package:teste_eprhom/core/values/strings.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class PostsController extends GetxController with StateMixin<Rx<Posts>> {
  final PostsRepository repository = PostsRepository(EprhomProvider());
  AppConfigService appConfigService;
  final expanded = false.obs;
  AuthService authService;

  TextEditingController txtController = TextEditingController(text: '');
  @override
  void onInit() async {
    var b = await VerifyInternet.verify();
    if (b) {
      this.authService = Get.find<AuthService>();
      this.appConfigService = Get.find<AppConfigService>();
      this.repository.getAllPosts().then((resp) {
        change(resp, status: RxStatus.success());
      }, onError: (err) {
        change(
          null,
          status: RxStatus.error('Erro ao recuperar Publicaçãõs'),
        );
        super.onInit();
      });
    } else {
      Get.dialog(AlertDialog(
        actions: [
          OutlineButton(
            onPressed: () => SystemNavigator.pop(),
            borderSide: BorderSide(color: heartColor),
            child: Text(
              exit_app,
              style: TextStyle(color: mainColor),
            ),
          ),
        ],
        title: Text(not_connected),
        content: Container(
          height: 180.0,
          width: 180.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/not_connected.png'))),
        ),
      ));
      super.onInit();
    }
  }

  getPostDate(String d) {
    var date = d;
    return date;
  }

  openAddPost() {
    this.txtController.text = '';
    Get.bottomSheet(BottomSheetAddPost());
  }

  addPost() {
    authService.user.value.texto = this.txtController.text;
    if (authService.user.value.texto == null ||
        authService.user.value.texto == '' ||
        authService.user.value.texto.length < 7) {
      showTopSnackBar(Get.overlayContext, MinumunCaracteresPushWidget());
    } else if (authService.user.value.texto.length > 280) {
      showTopSnackBar(Get.overlayContext, AddPostNotifyWidget());
    } else {
      this.state.value.result.insert(
          0,
          Result(
                  abrirRespostas: false,
                  dataHora:
                      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year} as ${DateTime.now().hour}:${DateTime.now().minute}',
                  liked: false,
                  respostas: 0,
                  id: ID,
                  estaLido: false,
                  autorNome: 'Kauê Tomaz Murakami',
                  autorImageUrl: null,
                  texto: this.txtController.text)
              .obs);
      print(state.toJson());
      change(state, status: RxStatus.success());
      showTopSnackBar(Get.overlayContext, AddPostNotifyWidget());
    }
    this.txtController.text = '';
    Get.back();
  }

  like(i) {
    this.state.value.result[i].value.liked =
        !this.state.value.result[i].value.liked;
    change(this.state, status: RxStatus.success());
  }

  deletePost(i) {
    this.state.value.result.removeAt(i);
    change(this.state, status: RxStatus.success());
    showTopSnackBar(Get.overlayContext, DeletePostNotifyWidget());
  }

  editPost(i) {
    this.state.value.result[i].value.texto = this.txtController.text;
    if (this.state.value.result[i].value.texto == null ||
        this.state.value.result[i].value.texto == '' ||
        this.state.value.result[i].value.texto.length < 7) {
      showTopSnackBar(Get.overlayContext, MinumunCaracteresPushWidget());
    } else {
      change(this.state, status: RxStatus.success());
      showTopSnackBar(Get.overlayContext, EditPostNotifyWidget());
      Get.back();
    }
  }

  openEditPost(i) {
    this.txtController.text = this.state.value.result[i].value.texto;
    Get.bottomSheet(BottomSheetEditPost(i));
  }

  exapandAnswers(i) {
    this.state.value.result[i].value.abrirRespostas =
        !this.state.value.result[i].value.abrirRespostas;
    change(this.state, status: RxStatus.success());
  }

  changeTheme(b) => this.appConfigService.changeTheme(b);
}
