import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/app/modules/posts/controller.dart';
import 'package:teste_eprhom/app/modules/posts/widgets/header.dart';
import 'package:teste_eprhom/app/modules/posts/widgets/list_posts.dart';
import 'package:teste_eprhom/app/widgets/loading.dart';

class PostsPage extends GetView {
  final PostsController controller = Get.put(PostsController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: this.controller.obx(
            (state) => Column(
              children: [HeaderWidget(), ListPostsWidget()],
            ),
            onLoading: LoadingWidget(),
            onError: (error) => Center(child: Text(error)),
          ),
    );
  }
}
