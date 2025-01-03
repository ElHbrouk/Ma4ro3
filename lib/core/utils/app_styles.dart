import 'package:flutter/material.dart';
import '../functions/get_responsive_font.dart';

abstract class AppStyles {
  static const fontFamily = 'Montserrat';
  static TextStyle boldBlack18(BuildContext context) {
    return TextStyle(
      fontSize: getResonsiveFont(context, fontSize: 18),
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontFamily: fontFamily,
    );
  }

  static TextStyle regularWhite26(BuildContext context) {
    return TextStyle(
      fontSize: getResonsiveFont(context, fontSize: 26),
      fontWeight: FontWeight.w400,
      color: Colors.white,
      fontFamily: fontFamily,
    );
  }
}
