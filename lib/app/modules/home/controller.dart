import 'package:get/get.dart';
import 'package:teste_eprhom/app/data/models/posts.dart';
import 'package:teste_eprhom/app/data/services/app_config_service/service.dart';
import 'package:teste_eprhom/app/modules/home/repository.dart';

class HomeController extends GetxController with StateMixin<Rx<Posts>> {
  final HomeRepository repository;
  HomeController(this.repository);
  AppConfigService appConfigService;
  @override
  void onInit() {
    this.appConfigService = Get.find<AppConfigService>();
    this.repository.getAllPosts().then((resp) {
      change(resp, status: RxStatus.success());
    }, onError: (err) {
      print(err);
      change(
        null,
        status: RxStatus.error('Error get data'),
      );
      super.onInit();
    });
  }

  changeTheme(b) => this.appConfigService.changeTheme(b);
}
