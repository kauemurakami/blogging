import 'dart:convert';

import 'package:get/get.dart';
import 'package:teste_eprhom/app/data/models/error.dart';
import 'package:teste_eprhom/app/data/models/posts.dart';

const baseUrl = 'https://run.mocky.io/v3/29ca1a88-ec02-44aa-9d26-214983b174a9';

class EprhomProvider extends GetConnect {
  getPosts() async {
    Rx<Posts> posts;
    final response = await get<Rx<Posts>>(baseUrl, decoder: (res) {
      posts = Posts.fromJson(res).obs;
      return posts;
    });
    if (response.hasError) {
      throw ErrorModel(
          message: response.statusText, status: response.statusCode);
    }
    return posts;
  }
}
