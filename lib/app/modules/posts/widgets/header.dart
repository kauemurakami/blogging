import 'package:flutter/material.dart';
import 'package:teste_eprhom/app/modules/posts/widgets/switch_theme.dart';
import 'package:teste_eprhom/core/theme/text_theme.dart';
import 'package:teste_eprhom/core/values/strings.dart';

class HeaderWidget extends Container {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            title_home,
            style: title_style,
          ),
        ),
        SwitchThemeWidget()
      ],
    );
  }
}
