import 'package:get/get.dart';
import 'package:teste_eprhom/app/data/services/app_config_service/service.dart';
import 'package:teste_eprhom/app/modules/home/repository.dart';

class HomeController extends GetxController {
  final HomeRepository repository;

  final index = 0.obs;
  HomeController(this.repository);
  AppConfigService appConfigService;
  @override
  void onInit() {
    this.appConfigService = Get.find<AppConfigService>();
    super.onInit();
  }

  changePage(i) => this.index.value = i;
}
