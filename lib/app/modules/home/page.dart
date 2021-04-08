import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/app/modules/home/controller.dart';
import 'package:teste_eprhom/app/modules/home/widgets/card_post.dart';
import 'package:teste_eprhom/app/widgets/loading.dart';
import 'package:teste_eprhom/core/theme/text_theme.dart';
import 'package:teste_eprhom/core/values/strings.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: this.controller.obx(
            (state) => Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        title_home,
                        style: title_style,
                      ),
                    ),
                    Switch.adaptive(
                        value: this.controller.appConfigService.getTheme(),
                        onChanged: (b) => this.controller.changeTheme(b)),
                  ],
                ),
                Expanded(
                  flex: 9,
                  child: ListView.builder(
                      itemCount: state.value.result.length,
                      itemBuilder: (_, index) => CardPostWidget(index)),
                )
              ],
            ),
            onLoading: LoadingWidget(),
            onError: (error) => Center(child: Text(error)),
          ),
    ));
  }
}
