import 'package:flutter/material.dart';
import 'package:teste_eprhom/core/values/colors.dart';

class AnswerCardWidget extends Container {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Kauê Murakami',
            style: TextStyle(
                color: mainColor, fontSize: 16.0, fontWeight: FontWeight.w700),
          ),
          Text(
              'desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
        ],
      ),
    );
  }
}
