import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageAvatarWidget extends Container {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
      height: 150.0,
      width: 150.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage('assets/images/avatar.png'),
              fit: BoxFit.cover)),
    );
  }
}
