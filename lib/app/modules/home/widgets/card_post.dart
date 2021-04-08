import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/app/modules/home/controller.dart';

class CardPostWidget extends Container {
  final controller = Get.find<HomeController>();
  final index;
  CardPostWidget(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      width: Get.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Image.network(
                    this
                        .controller
                        .state
                        .value
                        .result[this.index]
                        .value
                        .autorImageUrl,
                    frameBuilder: (BuildContext context, Widget child,
                        int frame, bool wasSynchronouslyLoaded) {
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: child,
                      );
                    },
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent loadingProgress) {
                      return Center(child: child);
                    },
                  ),
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Text(this
                      .controller
                      .state
                      .value
                      .result[this.index]
                      .value
                      .autorNome))
            ],
          ),
          Text(this.controller.state.value.result[this.index].value.texto),
        ],
      ),
    );
  }
}
