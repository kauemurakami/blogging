import 'package:get/get.dart';
import 'package:teste_eprhom/app/data/models/posts.dart';
import 'package:teste_eprhom/app/modules/splash/repository.dart';
import 'package:teste_eprhom/routes/pages.dart';

class SplashController extends GetxController {
  final SplashRepository repository;
  SplashController(this.repository);
}
