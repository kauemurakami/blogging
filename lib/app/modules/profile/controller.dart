import 'package:get/get.dart';
import 'package:teste_eprhom/app/data/providers/api/api.dart';
import 'package:teste_eprhom/app/modules/profile/repository.dart';

class ProfileController extends GetxController {
  final ProfileRepository repository = ProfileRepository(EprhomProvider());
}
