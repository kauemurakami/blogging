import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/app/data/models/error.dart';
import 'package:teste_eprhom/app/data/models/posts.dart';
import 'package:teste_eprhom/app/data/providers/api/api.dart';
import 'package:teste_eprhom/app/modules/posts/repository.dart';

main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  PostsRepository postsRepository;
  setUp(() async {
    postsRepository = PostsRepository(EprhomProvider());
  });
  group('get posts tests', () {
    test("posts recuperados", () async {
      var posts = await postsRepository.getAllPosts();
      expect(posts, Rx<Posts>());
    });
  });

  group('get posts error', () {
    test("posts recuperados", () async {
      var posts = await postsRepository.getAllPosts();
      expect(posts, ErrorModel());
    });
  });
}
