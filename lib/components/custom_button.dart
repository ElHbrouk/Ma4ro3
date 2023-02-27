import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({Key? key,this.onTap}) : super(key: key);
Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsetsDirectional.only(
          bottom: 7,
        ),
        width: 315,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: const Text(
            'إحسب',
         // textAlign: TextAlign.center,
          style: TextStyle(

            color: Colors.white,
            fontSize: 26,
          ),
          ),
        ),
      ),
    );
  }
}
