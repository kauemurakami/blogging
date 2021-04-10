import 'package:get/get.dart';
import 'package:teste_eprhom/app/data/providers/api/api.dart';
import 'package:teste_eprhom/app/data/services/app_config_service/service.dart';
import 'package:teste_eprhom/app/data/services/auth_service/service.dart';
import 'package:teste_eprhom/app/modules/profile/repository.dart';

class ProfileController extends GetxController {
  final ProfileRepository repository = ProfileRepository(EprhomProvider());
  AppConfigService appConfigService;
  AuthService authService;
  @override
  void onInit() {
    this.appConfigService = Get.find<AppConfigService>();
    this.authService = Get.find<AuthService>();
    super.onInit();
  }
}
