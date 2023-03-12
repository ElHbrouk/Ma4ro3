import 'package:flutter/material.dart';

Widget CustomContainer({
  Color color = const Color(0xffD4ED26),
  double borderWidth = 2.0,
  double width = 55,
  double height = 55,
  required String combineText,
  required String resultText,
  Color textColor = Colors.black,
}) =>Container(
  alignment: Alignment.bottomRight,
  decoration: BoxDecoration(

      color: color,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(
        width: borderWidth,
      )),
  width: width,
  height: height,
  padding: EdgeInsetsDirectional.symmetric(horizontal: 10,vertical: 10),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text(
        combineText,
        style: TextStyle(
          fontSize: 18,
          color: textColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      const SizedBox(height: 10,),
      Text(
        resultText,
        style: TextStyle(
          fontSize: 24,
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
);


Widget CustomButton({
  Color color = const Color(0xffD4ED26),
  double borderWidth = 2.0,
  double width = 55,
  double height = 55,
  required String text,
  Color textColor = Colors.black,
})=>Container(
  decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(
        width: borderWidth,
      )),
  width: width,
  height: height,
  child: Center(
    child: Text(
      text,
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 24,
        color: textColor,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),
);
