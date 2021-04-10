import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/app/modules/friends/page.dart';
import 'package:teste_eprhom/app/modules/home/controller.dart';
import 'package:teste_eprhom/app/modules/posts/page.dart';
import 'package:teste_eprhom/app/modules/profile/page.dart';
import './widgets/fab.dart';
import './widgets/bottom_navigation.dart';

class HomePage extends GetView<HomeController> {
  final pages = <Widget>[PostsPage(), FriendsPage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => this.pages[this.controller.index.value]),
        floatingActionButton: FabWidget(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: BottomNavigateWidget());
  }
}
