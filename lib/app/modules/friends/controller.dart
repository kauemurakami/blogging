import 'package:get/get.dart';
import 'package:teste_eprhom/app/data/models/posts.dart';
import 'package:teste_eprhom/app/modules/friends/repository.dart';

class FriendsController extends GetxController with StateMixin<Rx<Posts>> {
  final repository = FriendsRepository();
  @override
  void onInit() {
    this.repository.getAllFriends().then((resp) {
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
}
