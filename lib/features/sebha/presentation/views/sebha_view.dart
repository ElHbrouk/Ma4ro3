import 'package:flutter/material.dart';

import '../../../calculator/presentation/views/calculator_view.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({Key? key}) : super(key: key);

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
      drawer: Drawer(
        width: 230,
        backgroundColor: const Color(0xffD4ED26),
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/Vector.png',
                height: 75,
                width: 75,
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      title: const Text(
                        textAlign: TextAlign.end,
                        'حساب أجرة موحده',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: const Text(
                        textAlign: TextAlign.end,
                        'حساب أجرة مختلفة',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CalculatorView(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.calculate_outlined),
                      title: const Text(
                        textAlign: TextAlign.end,
                        'الآلة الحاسبة',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CalculatorView(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.pan_tool_sharp),
                      title: const Text(
                        textAlign: TextAlign.end,
                        ' دعاء السفر',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CalculatorView(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.front_hand),
                      title: const Text(
                        textAlign: TextAlign.end,
                        'تسبيح',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SebhaView(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.gamepad),
                      title: const Text(
                        textAlign: TextAlign.end,
                        ' X/O لعبة',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CalculatorView(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.star),
                      title: const Text(
                        textAlign: TextAlign.end,
                        'قيم التطبيق',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CalculatorView(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.chat),
                      title: const Text(
                        textAlign: TextAlign.end,
                        ' تواصل معنا',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CalculatorView(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
                  'assets/images/Frame.png',
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
