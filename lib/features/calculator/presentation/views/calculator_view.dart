import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashroa/features/home/presentation/views/home_view.dart';
import 'package:mashroa/features/sebha/presentation/views/sebha_view.dart';

import '../../../../core/widgets/custom_container.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({Key? key}) : super(key: key);
  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  String result = '0';
  String finalResult = '0';
  String operation = '';
  double num1 = 0;
  double num2 = 0;
  buttonPressed(String buttonValue) {
    if (buttonValue == 'C') {
      finalResult = '0';
      num1 = 0;
      num2 = 0;
      operation = '';
    } else if (buttonValue == '+' ||
        buttonValue == '-' ||
        buttonValue == 'X' ||
        buttonValue == '/') {
      num1 = double.parse(result);
      operation = buttonValue;
      finalResult = '0';
      result += buttonValue;
    } else if (buttonValue == '.') {
      if (finalResult.contains('.')) {
      } else {
        finalResult += buttonValue;
      }
    } else if (buttonValue == '+/-') {
      if (result.toString().contains('-')) {
        result.toString().substring(1);
        finalResult = result;
      } else {
        result = '-$result';
        finalResult = result;
      }
    } else if (buttonValue == '%') {
      num2 = double.parse(result);
      finalResult = (num2 / 100).toString();
    } else if (buttonValue == '=') {
      num2 = double.parse(result);
      if (operation == '+') {
        finalResult = (num1 + num2).toString();
      } else if (operation == '-') {
        finalResult = (num1 - num2).toString();
      } else if (operation == 'X') {
        finalResult = (num1 * num2).toString();
      } else if (operation == '/') {
        finalResult = (num1 / num2).toString();
      }
    } else {
      finalResult += buttonValue;
    }
    setState(() {
      result = double.parse(finalResult).toString();
    });
  }

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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeView(),
                          ),
                        );
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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
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
                    Image.asset(
                      'assets/images/mashro3.png',
                      height: 30.h,
                      width: 97.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  'الحاسبة',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 32,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomContainer(
                  color: Colors.white,
                  width: 300,
                  height: 165,
                  combineText: finalResult,
                  resultText: result,
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              buttonPressed('C');
                            });
                          },
                          child: CustomButton(
                            width: 71.25,
                            height: 71.25,
                            color: Colors.white,
                            text: 'C',
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              buttonPressed('Del');
                            });
                          },
                          child: CustomButton(
                            width: 71.25.w,
                            height: 71.25.h,
                            color: Colors.white,
                            text: 'Del',
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              buttonPressed('%');
                            });
                          },
                          child: CustomButton(
                            width: 71.25.w,
                            height: 71.25.h,
                            color: Colors.white,
                            text: '%',
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              buttonPressed('/');
                            });
                          },
                          child: CustomButton(
                            width: 71.25.w,
                            height: 71.25.h,
                            color: Colors.white,
                            text: '/',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              buttonPressed('7');
                            });
                          },
                          child: CustomButton(
                            width: 71.25.w,
                            height: 71.25.h,
                            color: const Color(0xffD4ED26),
                            text: '7',
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('8');
                          },
                          child: CustomButton(
                            width: 71.25.w,
                            height: 71.25.h,
                            color: const Color(0xffD4ED26),
                            text: '8',
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('9');
                          },
                          child: CustomButton(
                            width: 71.25.w,
                            height: 71.25.h,
                            color: const Color(0xffD4ED26),
                            text: '9',
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('X');
                          },
                          child: CustomButton(
                            width: 71.25.w,
                            height: 71.25.h,
                            color: Colors.white,
                            text: 'X',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            buttonPressed('4');
                          },
                          child: CustomButton(
                            width: 71.25.w,
                            height: 71.25.h,
                            color: const Color(0xffD4ED26),
                            text: '4',
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('5');
                          },
                          child: CustomButton(
                            width: 71.25.w,
                            height: 71.25.h,
                            color: const Color(0xffD4ED26),
                            text: '5',
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('6');
                          },
                          child: CustomButton(
                            width: 71.25.w,
                            height: 71.25.h,
                            color: const Color(0xffD4ED26),
                            text: '6',
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('+');
                          },
                          child: CustomButton(
                            width: 71.25.w,
                            height: 71.25.h,
                            color: Colors.white,
                            text: '+',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            buttonPressed('1');
                          },
                          child: CustomButton(
                            width: 71.25.w,
                            height: 71.25.h,
                            color: const Color(0xffD4ED26),
                            text: '1',
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('2');
                          },
                          child: CustomButton(
                            width: 71.25.w,
                            height: 71.25.h,
                            color: const Color(0xffD4ED26),
                            text: '2',
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('3');
                          },
                          child: CustomButton(
                            width: 71.25.w,
                            height: 71.25.h,
                            color: const Color(0xffD4ED26),
                            text: '3',
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('-');
                          },
                          child: CustomButton(
                            width: 71.25.w,
                            height: 71.25.h,
                            color: Colors.white,
                            text: '-',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            buttonPressed('0');
                          },
                          child: CustomButton(
                            width: 147.5.w,
                            height: 71.25.h,
                            color: const Color(0xffD4ED26),
                            text: '0',
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('.');
                          },
                          child: CustomButton(
                            width: 71.25.w,
                            height: 71.25.h,
                            color: const Color(0xffD4ED26),
                            text: '.',
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('=');
                          },
                          child: CustomButton(
                            width: 71.25.w,
                            height: 71.25.h,
                            color: Colors.black,
                            text: '=',
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
