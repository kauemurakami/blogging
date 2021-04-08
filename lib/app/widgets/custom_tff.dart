import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teste_eprhom/core/values/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final Function(String value) onSaved;
  final Function(String value) onChanged;
  final Function(String value) validator;
  final bool emailCheck;
  final String text;
  final Widget sufixIcon;
  final Widget prefixIcon;
  final TextInputAction action;
  final TextInputType type;
  final bool obscure;
  final TextEditingController controller;
  final TextDirection direction;
  final int max;
  final int maxLines;
  final String initialValue;
  final String hintText;
  final formatter;
  final Color color;
  final bool enable;

  CustomTextFormField(
      {this.maxLines = 1,
      this.enable = true,
      this.formatter = const <TextInputFormatter>[],
      this.initialValue,
      this.emailCheck,
      this.text,
      this.onChanged,
      this.onSaved,
      this.validator,
      this.sufixIcon,
      this.action,
      this.color,
      this.type,
      this.obscure = false,
      this.controller,
      this.direction = TextDirection.ltr,
      this.max,
      this.prefixIcon,
      this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: this.enable,
      inputFormatters: this.formatter,
      maxLines: this.maxLines,
      initialValue: this.initialValue,
      maxLength: this.max,
      textDirection: this.direction,
      controller: this.controller,
      obscureText: this.obscure,
      style: TextStyle(fontSize: 16),
      keyboardType: this.type,
      cursorColor: mainColor,
      decoration: InputDecoration(
          hintText: this.hintText,
          hintStyle: TextStyle(color: this.color),
          //contentPadding: EdgeInsets.only(top: 5),
          border:
              UnderlineInputBorder(borderSide: BorderSide(color: accentColor)),
          labelText: this.text,
          suffixIcon: this.sufixIcon,
          prefixIcon: this.prefixIcon),
      onChanged: (value) => this.onChanged(value),
      onSaved: (value) => this.onSaved(value),
      validator: (value) => this.validator(value),
      textInputAction: this.action,
    );
  }
}
