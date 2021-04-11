import 'package:get/get.dart';
import 'package:teste_eprhom/app/data/providers/api/api.dart';
import 'package:teste_eprhom/app/data/services/app_config_service/service.dart';
import 'package:teste_eprhom/app/data/services/auth_service/service.dart';
import 'package:teste_eprhom/app/modules/profile/repository.dart';
import 'package:teste_eprhom/core/values/strings.dart';
import 'package:url_launcher/url_launcher.dart';

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

  call() async {
    String url = 'tel://34984069347';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não disponível';
    }
  }
}
