import 'package:get/get.dart';
import 'package:teste_eprhom/app/data/models/posts.dart';
import 'package:teste_eprhom/app/data/services/app_config_service/service.dart';
import 'package:teste_eprhom/app/modules/home/repository.dart';

class HomeController extends GetxController {
  final HomeRepository repository;

  final index = 0.obs;
  final newPost = Result().obs;
  HomeController(this.repository);
  AppConfigService appConfigService;

  @override
  void onInit() {
    this.appConfigService = Get.find<AppConfigService>();
    super.onInit();
  }

  changePage(i) => this.index.value = i;
  changeTheme(b) => this.appConfigService.changeTheme(b);
  onChangedPost(v) => '';
  onSavedPost(v) => '';
  validatePost(v) => '';
  addPost() => '';
}
