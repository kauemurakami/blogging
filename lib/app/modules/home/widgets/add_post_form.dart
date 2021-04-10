import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/app/modules/home/controller.dart';
import 'package:teste_eprhom/app/modules/home/widgets/publish_button.dart';
import 'package:teste_eprhom/core/values/colors.dart';
import 'package:teste_eprhom/core/values/strings.dart';

class AddPostForm extends Container {
  static final GlobalKey _formKey = GlobalKey<FormState>();
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    border: Border.all(color: mainColor),
                    borderRadius: BorderRadius.circular(12.0)),
                child: Theme(
                  data: ThemeData(
                    primaryColor: mainColor,
                    accentColor: mainColor,
                  ),
                  child: TextFormField(
                      onChanged: (v) => this.controller.onChangedPost(v),
                      onSaved: (v) => this.controller.onSavedPost(v),
                      validator: (v) => this.controller.validatePost(v),
                      keyboardType: TextInputType.multiline,
                      maxLines: 10,
                      cursorColor: Colors.white,
                      maxLength: 280,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          counterStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          disabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          labelText: hint_add_post,
                          labelStyle: TextStyle(color: Colors.white))),
                ),
              ),
              PublishButton()
            ],
          ),
        ),
      ),
    );
  }
}
