import 'package:flutter/material.dart';
import 'package:mashroa/core/data/drawer_item_model.dart';
import 'package:mashroa/features/calculator/presentation/views/calculator_view.dart';
import 'package:mashroa/features/sebha/presentation/views/sebha_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });
  final List<DrawerItemModel> items = const [];
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
