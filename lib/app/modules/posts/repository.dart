import 'package:teste_eprhom/app/data/providers/api/api.dart';

class PostsRepository {
  final EprhomProvider api;

  PostsRepository(this.api);

  getAllPosts() => this.api.getPosts();
}
