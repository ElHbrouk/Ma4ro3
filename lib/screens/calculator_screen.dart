import 'package:flutter/material.dart';
import 'package:mashroa/screens/home_screen.dart';
import 'package:mashroa/screens/sebha.dart';
import '../components/custom_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);
  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
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
        width: 230.w,
        backgroundColor: const Color(0xffD4ED26),
        child: Padding(
          padding: EdgeInsets.only(top: 50.0.sp),
          child: Column(
            children: [
              Image.asset(
                'assets/images/Vector.png',
                height: 75.h,
                width: 75.w,
              ),
              Container(
                margin: EdgeInsets.only(top: 40.sp),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      title: Text(
                        textAlign: TextAlign.end,
                        'حساب أجرة موحده',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.sp,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        textAlign: TextAlign.end,
                        'حساب أجرة مختلفة',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.sp,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CalculatorScreen(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.calculate_outlined),
                      title: Text(
                        textAlign: TextAlign.end,
                        'الآلة الحاسبة',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.sp,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CalculatorScreen(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.pan_tool_sharp),
                      title: Text(
                        textAlign: TextAlign.end,
                        ' دعاء السفر',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.sp,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CalculatorScreen(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.front_hand),
                      title: Text(
                        textAlign: TextAlign.end,
                        'تسبيح',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.sp,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Sebha(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.gamepad),
                      title: Text(
                        textAlign: TextAlign.end,
                        ' X/O لعبة',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.sp,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CalculatorScreen(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.star),
                      title: Text(
                        textAlign: TextAlign.end,
                        'قيم التطبيق',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.sp,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CalculatorScreen(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.chat),
                      title: Text(
                        textAlign: TextAlign.end,
                        ' تواصل معنا',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.sp,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CalculatorScreen(),
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
          padding: EdgeInsets.all(20.0.sp),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      padding: EdgeInsetsDirectional.all(0.sp),
                      onPressed: () {
                        scaffoldKey.currentState!.openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                      ),
                      iconSize: 40.sp,
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
                Text(
                  'الحاسبة',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 32.sp,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomContainer(
                  color: Colors.white,
                  width: 300.w,
                  height: 165.h,
                  combineText: finalResult,
                  resultText: result,
                ),
                SizedBox(
                  height: 15.h,
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
                            width: 71.25.w,
                            height: 71.25.h,
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
