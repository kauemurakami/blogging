import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/app/modules/friends/controller.dart';
import 'package:teste_eprhom/core/theme/text_theme.dart';

class CardFriendWidget extends Container {
  final index;
  CardFriendWidget(this.index);
  final controller = Get.find<FriendsController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(this
                            .controller
                            .state
                            .value
                            .result[index]
                            .value
                            .autorImageUrl),
                      ),
                      shape: BoxShape.circle),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              this.controller.state.value.result[index].value.autorNome,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
