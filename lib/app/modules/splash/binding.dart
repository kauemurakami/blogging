import 'package:get/get.dart';
import 'package:teste_eprhom/app/data/providers/api/api.dart';
import 'package:teste_eprhom/app/modules/splash/controller.dart';
import 'package:teste_eprhom/app/modules/splash/repository.dart';

//injeção de dependências
class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
        () => SplashController(SplashRepository(EprhomProvider())));
  }
}
