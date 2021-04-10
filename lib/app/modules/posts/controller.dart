import 'package:get/get.dart';
import 'package:teste_eprhom/app/data/models/posts.dart';
import 'package:teste_eprhom/app/data/providers/api/api.dart';
import 'package:teste_eprhom/app/data/services/app_config_service/service.dart';
import 'package:teste_eprhom/app/modules/posts/repository.dart';
import 'package:teste_eprhom/core/values/strings.dart';

class PostsController extends GetxController with StateMixin<Rx<Posts>> {
  final PostsRepository repository = PostsRepository(EprhomProvider());
  AppConfigService appConfigService;
  final expanded = false.obs;
  @override
  void onInit() {
    this.appConfigService = Get.find<AppConfigService>();
    this.repository.getAllPosts().then((resp) {
      change(resp, status: RxStatus.success());
    }, onError: (err) {
      change(
        null,
        status: RxStatus.error('Error get data'),
      );
      super.onInit();
    });
  }

  getPostDate(String d) {
    var date = d;
    return date;
  }

  like(i) {
    this.state.value.result[i].value.liked =
        !this.state.value.result[i].value.liked;
    change(this.state, status: RxStatus.success());
  }

  exapandAnswers(i) {
    this.state.value.result[i].value.respostas <= 0
        ? Get.snackbar(ops, not_answers)
        : this.state.value.result[i].value.abrirRespostas =
            !this.state.value.result[i].value.abrirRespostas;
    change(this.state, status: RxStatus.success());
  }

  changeTheme(b) => this.appConfigService.changeTheme(b);
}
