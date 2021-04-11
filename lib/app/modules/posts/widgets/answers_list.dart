import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/app/modules/posts/controller.dart';
import 'package:teste_eprhom/app/modules/posts/widgets/answers_card.dart';
import 'package:teste_eprhom/core/values/colors.dart';
import 'package:teste_eprhom/core/values/strings.dart';

class AnswersListWidget extends Container {
  final controller = Get.find<PostsController>();
  final index;
  AnswersListWidget(this.index);
  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedContainer(
          duration: Duration(milliseconds: 500),
          height: this
                  .controller
                  .state
                  .value
                  .result[this.index]
                  .value
                  .abrirRespostas
              ? 200.0
              : 0.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                  child: Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Text(answers))),
              Expanded(
                flex: 8,
                child: Theme(
                  data: Theme.of(context).copyWith(accentColor: mainColor),
                  child: ListView.builder(
                      itemCount: this
                          .controller
                          .state
                          .value
                          .result[this.index]
                          .value
                          .respostas,
                      itemBuilder: (_, index) => AnswerCardWidget()),
                ),
              ),
            ],
          ),
        ));
  }
}
