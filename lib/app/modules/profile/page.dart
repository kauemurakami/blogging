import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class ProfilePage extends GetView {
  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Text('ProfileController')));
  }
}
