import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:teste_eprhom/core/values/colors.dart';

class LoadingWidget extends Container {
  @override
  Widget build(BuildContext context) {
    return SpinKitSquareCircle(
      color: mainColor,
    );
  }
}
