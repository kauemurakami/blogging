import 'package:get/get.dart';
import 'package:teste_eprhom/app/data/models/posts.dart';
import 'package:teste_eprhom/core/values/strings.dart';

class AuthService extends GetxService {
  Future<AuthService> init() async {
    return this;
  }

  Rx<Result> user = Result(
    abrirRespostas: false,
    dataHora:
        '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year} as ${DateTime.now().hour}:${DateTime.now().minute}',
    liked: false,
    respostas: 0,
    id: ID,
    estaLido: false,      
    autorNome: 'Kauê Tomaz Murakami',
    autorImageUrl: null,
  ).obs;
  login() {}
  logout() {}
  signUp() {}
}
