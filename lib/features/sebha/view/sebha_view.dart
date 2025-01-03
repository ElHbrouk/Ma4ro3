import 'package:flutter/material.dart';
import '../../../core/utils/image_assets.dart';
import '../../../core/widgets/custom_drawer.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomDrawer(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 30),
              child: IconButton(
                onPressed: () {
                  return scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                ),
                iconSize: 31,
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  ImageAssets.imagesSebha,
                  width: 315,
                  height: 665.77,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 70),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'تسبيحة',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'تصفير',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsetsDirectional.only(bottom: 110, end: 110),
                  child: Row(
                    children: [
                      Text(
                        '$number',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 48,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsetsDirectional.only(bottom: 225),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'السبحة',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin:
                      const EdgeInsetsDirectional.only(top: 110, start: 155),
                  child: IconButton(
                    iconSize: 40,
                    color: Colors.black.withOpacity(0),
                    onPressed: () {
                      setState(() {
                        number = 0;
                      });
                    },
                    icon: Icon(
                      Icons.add_circle,
                      color: Colors.black.withOpacity(0),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsetsDirectional.only(top: 250),
                  child: IconButton(
                    iconSize: 115,
                    color: Colors.black.withOpacity(0),
                    onPressed: () {
                      setState(() {
                        number++;
                      });
                    },
                    icon: Icon(
                      Icons.add_circle,
                      color: Colors.black.withOpacity(0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
