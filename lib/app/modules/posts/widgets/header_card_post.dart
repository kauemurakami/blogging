import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/app/modules/posts/controller.dart';

class HeaderCardWidget extends Container {
  final controller = Get.find<PostsController>();
  final index;
  HeaderCardWidget(this.index);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: 110.0,
            width: 110.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: this
                                .controller
                                .state
                                .value
                                .result[this.index]
                                .value
                                .autorImageUrl ==
                            null
                        ? AssetImage('assets/images/avatar.png')
                        : NetworkImage(this
                            .controller
                            .state
                            .value
                            .result[this.index]
                            .value
                            .autorImageUrl),
                    fit: BoxFit.cover),
                shape: BoxShape.circle),
          ),
        ),
        Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    this
                        .controller
                        .state
                        .value
                        .result[this.index]
                        .value
                        .autorNome,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(this.controller.getPostDate(this
                      .controller
                      .state
                      .value
                      .result[this.index]
                      .value
                      .dataHora)),
                ),
              ],
            ))
      ],
    );
  }
}
