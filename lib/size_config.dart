import 'package:flutter/material.dart';

class SizeConfig {
  static double screenHeight;
  static double screenWidth;
  static MediaQueryData _mediaQueryData;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    orientation = _mediaQueryData.orientation;
  }
}

double getProportionateScreenHeight(double initHeight) {
  double screenHeight = SizeConfig.screenHeight;

  return (initHeight / 812.0) * screenHeight;
}

double getProportionateScreenWidth(double initWidth) {
  double screenWidth = SizeConfig.screenWidth;

  return (initWidth / 375.0) * screenWidth;
}
