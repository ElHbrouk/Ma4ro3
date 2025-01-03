import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          padding: const EdgeInsetsDirectional.all(0),
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(
            Icons.menu,
          ),
          iconSize: 40,
        ),
        Text(
          'مشروع',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.w900,
            fontFamily: 'Montserrat',
          ),
        )
        // Image.asset(
        //   ImageAssets.imagesMashroaWord,
        //   height: 30,
        //   width: 97,
        // ),
      ],
    );
  }
}
