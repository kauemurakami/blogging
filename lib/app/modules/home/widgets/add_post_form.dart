import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_eprhom/app/modules/home/controller.dart';
import 'package:teste_eprhom/core/values/colors.dart';
import 'package:teste_eprhom/core/values/strings.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class AddPostForm extends Container {
  final GlobalKey _formKey = GlobalKey<FormState>();
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
                      maxLength: 380,
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
              Container(
                width: 160.0,
                padding: const EdgeInsets.all(8.0),
                child: OutlineButton(
                    hoverColor: mainColor,
                    splashColor: mainColor,
                    highlightedBorderColor: mainColor,
                    highlightColor: mainColor,
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    onPressed: () {
                      final FormState form = this._formKey.currentState;
                      if (form.validate()) {
                        this.controller.addPost();
                      } else {
                        showTopSnackBar(
                            Get.overlayContext,
                            CustomSnackBar.error(
                              icon: Icon(
                                Icons.error_outline,
                                color: mainColor,
                                size: 120.0,
                              ),
                              backgroundColor: Colors.transparent,
                              iconRotationAngle: 32,
                              message: min_caracteres,
                            ));
                      }
                    },
                    child: Text(
                      publish,
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
