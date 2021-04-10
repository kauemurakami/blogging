import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/app/modules/posts/widgets/answers_list.dart';
import 'package:teste_eprhom/app/modules/posts/widgets/bottom_card_items.dart';
import 'package:teste_eprhom/app/modules/posts/widgets/header_card_post.dart';
import 'package:teste_eprhom/core/values/colors.dart';
import '../controller.dart';

class CardPostWidget extends Container {
  final controller = Get.find<PostsController>();
  final index;
  CardPostWidget(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: mainColor),
          borderRadius: BorderRadius.circular(12.0)),
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      width: Get.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderCardWidget(this.index),
          Text(this.controller.state.value.result[this.index].value.texto),
          BottomItems(this.index),
          AnswersListWidget(this.index)
        ],
      ),
    );
  }
}
