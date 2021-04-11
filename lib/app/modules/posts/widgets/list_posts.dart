import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/app/modules/posts/controller.dart';
import 'package:teste_eprhom/app/modules/posts/widgets/card_post.dart';
import 'package:teste_eprhom/core/values/colors.dart';

class ListPostsWidget extends Container {
  final controller = Get.find<PostsController>();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Theme(
        data: Theme.of(context).copyWith(accentColor: mainColor),
        child: ListView.builder(
            itemCount: this.controller.state.value.result.length,
            itemBuilder: (_, index) =>
                this.controller.state.value.result[index].value.texto.length <=
                        280
                    ? CardPostWidget(index)
                    : Container()),
      ),
    );
  }
}
