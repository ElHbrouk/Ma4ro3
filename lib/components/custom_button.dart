import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  CustomButton({Key? key,this.onTap,this.width =71.25 ,this.height}) : super(key: key);
  Function()? onTap;
  double? width = 71.25.w;
  double? height = 71.25.h;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsetsDirectional.only(
          bottom: 7,
        ),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text(
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
