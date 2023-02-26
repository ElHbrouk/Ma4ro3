import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({Key? key,required this.borderWidth,required this.width}) : super(key: key);
double borderWidth;
double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        keyboardType: TextInputType.phone,
        textAlign: TextAlign.center,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:  BorderSide(
                color: Colors.black,
                width: borderWidth,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:  BorderSide(
                color: Colors.black,
                width: borderWidth,
              )),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:  BorderSide(
              color: Colors.black,
              width:borderWidth,
            ),
          ),
        ),
      ),
    );
  }
}
