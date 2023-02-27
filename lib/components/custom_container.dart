import 'package:flutter/cupertino.dart';

class CustomContainer extends StatelessWidget {
   CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: Color(0xffD4ED26),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 2,

        )
      ),
      width: 55,
      height: 55,

    );
  }
}
