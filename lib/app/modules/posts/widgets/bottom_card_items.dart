import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/app/modules/posts/controller.dart';
import 'package:teste_eprhom/core/values/colors.dart';
import 'package:teste_eprhom/core/values/strings.dart';

class BottomItems extends Container {
  final controller = Get.find<PostsController>();
  final index;
  BottomItems(this.index);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Icon(
                  Icons.remove_red_eye,
                  size: 24.0,
                  color: this
                          .controller
                          .state
                          .value
                          .result[this.index]
                          .value
                          .estaLido
                      ? mainColor
                      : Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    this
                            .controller
                            .state
                            .value
                            .result[this.index]
                            .value
                            .estaLido
                        ? lido
                        : nlido,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () => this.controller.exapandAnswers(this.index),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Icon(
                          Icons.question_answer,
                          size: 21.0,
                        ),
                        Positioned(
                            top: 0.5,
                            left: 3.0,
                            child: Text(
                              this
                                  .controller
                                  .state
                                  .value
                                  .result[this.index]
                                  .value
                                  .respostas
                                  .toString(),
                              style: TextStyle(
                                  color: mainColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        answers,
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () => this.controller.like(this.index),
                child: Row(
                  children: [
                    Obx(() => Icon(
                          Icons.thumb_up,
                          color: this
                                  .controller
                                  .state
                                  .value
                                  .result[this.index]
                                  .value
                                  .liked
                              ? mainColor
                              : null,
                          size: 21.0,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        this
                                .controller
                                .state
                                .value
                                .result[this.index]
                                .value
                                .liked
                            ? deslike
                            : like,
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
