import 'package:flutter/material.dart';
import 'package:teste_eprhom/core/values/strings.dart';
import 'package:teste_eprhom/core/theme/text_theme.dart';

class AgeWidget extends Container {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          age_string,
          style: profile_text,
        ),
        Text(age_value, style: profile_text),
      ],
    );
  }
}
