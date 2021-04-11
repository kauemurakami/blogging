import 'package:flutter/material.dart';
import 'package:teste_eprhom/core/values/colors.dart';

class ButtonCvWidget extends Container {
  final VoidCallback callback;
  final String text;
  ButtonCvWidget({this.callback, this.text});
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: this.callback,
      child: Text(this.text),
      borderSide: BorderSide(color: mainColor),
    );
  }
}
