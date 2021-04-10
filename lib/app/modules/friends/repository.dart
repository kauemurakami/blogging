import 'package:teste_eprhom/app/data/providers/api/api.dart';

class FriendsRepository {
  final api = EprhomProvider();
  getAllFriends() => this.api.getPosts();
}
