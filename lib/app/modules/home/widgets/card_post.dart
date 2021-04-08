import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardPostWidget extends Container {
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
        children: [Text('a')],
      ),
    );
  }
}
