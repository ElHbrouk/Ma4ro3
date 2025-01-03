import 'package:flutter/material.dart';
import '../utils/size_config.dart';

double getResonsiveFont(BuildContext context, {required double fontSize}) {
  double fontFactor = getFontFactor(context);
  double resonsiveFont = fontFactor * fontSize;
  double lowerLimit = fontSize * 0.9;
  double upperLimit = fontSize * 1.2;
  return resonsiveFont.clamp(lowerLimit, upperLimit);
}

double getFontFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.mobile) {
    return width / 500;
  } else if (width < SizeConfig.tablet) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
