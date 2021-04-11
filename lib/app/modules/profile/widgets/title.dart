import 'package:flutter/material.dart';
import 'package:teste_eprhom/core/theme/text_theme.dart';
import 'package:teste_eprhom/core/values/strings.dart';

class TitleProfileWidget extends Container {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            profile,
            style: title_style,
          ),
        ),
      ],
    );
  }
}
