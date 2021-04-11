import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/app/modules/friends/controller.dart';
import 'package:teste_eprhom/app/modules/friends/widgets/card_friend.dart';
import 'package:teste_eprhom/app/widgets/loading.dart';
import 'package:teste_eprhom/core/theme/text_theme.dart';
import 'package:teste_eprhom/core/values/colors.dart';
import 'package:teste_eprhom/core/values/strings.dart';

class FriendsPage extends GetView {
  final FriendsController controller = Get.put(FriendsController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: this.controller.obx(
              (state) => Column(children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      friends,
                      style: title_style,
                    ),
                  ),
                ),
                Expanded(
                    flex: 9,
                    child: Theme(
                      data: Theme.of(context).copyWith(accentColor: mainColor),
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemCount: state.value.result.length,
                          itemBuilder: (_, index) => CardFriendWidget(index)),
                    ))
              ]),
              onLoading: LoadingWidget(),
              onError: (error) => Center(child: Text(error)),
            ));
  }
}
