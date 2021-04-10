import 'package:get/get.dart';
import 'package:teste_eprhom/app/data/models/posts.dart';

class AuthService extends GetxService {
  Future<AuthService> init() async {
    return this;
  }

  Rx<Result> user = Result(
    autorNome: 'Kauê Tomaz Murakami',
    autorImageUrl: 'assets/images/avatar.png',
  ).obs;
  login() {}
  logout() {}
  signUp() {}
}
