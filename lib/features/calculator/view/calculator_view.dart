import 'package:flutter/material.dart';

import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/custom_container.dart';
import '../../../core/widgets/custom_drawer.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});
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
      drawer: CustomDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomAppBar(scaffoldKey: scaffoldKey),
                SizedBox(
                  height: 10,
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
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              buttonPressed('Del');
                            });
                          },
                          child: CustomButton(
                            width: 71.25,
                            height: 71.25,
                            color: Colors.white,
                            text: 'Del',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              buttonPressed('%');
                            });
                          },
                          child: CustomButton(
                            width: 71.25,
                            height: 71.25,
                            color: Colors.white,
                            text: '%',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              buttonPressed('/');
                            });
                          },
                          child: CustomButton(
                            width: 71.25,
                            height: 71.25,
                            color: Colors.white,
                            text: '/',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
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
                            width: 71.25,
                            height: 71.25,
                            color: const Color(0xffD4ED26),
                            text: '7',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('8');
                          },
                          child: CustomButton(
                            width: 71.25,
                            height: 71.25,
                            color: const Color(0xffD4ED26),
                            text: '8',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('9');
                          },
                          child: CustomButton(
                            width: 71.25,
                            height: 71.25,
                            color: const Color(0xffD4ED26),
                            text: '9',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('X');
                          },
                          child: CustomButton(
                            width: 71.25,
                            height: 71.25,
                            color: Colors.white,
                            text: 'X',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            buttonPressed('4');
                          },
                          child: CustomButton(
                            width: 71.25,
                            height: 71.25,
                            color: const Color(0xffD4ED26),
                            text: '4',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('5');
                          },
                          child: CustomButton(
                            width: 71.25,
                            height: 71.25,
                            color: const Color(0xffD4ED26),
                            text: '5',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('6');
                          },
                          child: CustomButton(
                            width: 71.25,
                            height: 71.25,
                            color: const Color(0xffD4ED26),
                            text: '6',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('+');
                          },
                          child: CustomButton(
                            width: 71.25,
                            height: 71.25,
                            color: Colors.white,
                            text: '+',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            buttonPressed('1');
                          },
                          child: CustomButton(
                            width: 71.25,
                            height: 71.25,
                            color: const Color(0xffD4ED26),
                            text: '1',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('2');
                          },
                          child: CustomButton(
                            width: 71.25,
                            height: 71.25,
                            color: const Color(0xffD4ED26),
                            text: '2',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('3');
                          },
                          child: CustomButton(
                            width: 71.25,
                            height: 71.25,
                            color: const Color(0xffD4ED26),
                            text: '3',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('-');
                          },
                          child: CustomButton(
                            width: 71.25,
                            height: 71.25,
                            color: Colors.white,
                            text: '-',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            buttonPressed('0');
                          },
                          child: CustomButton(
                            width: 147.5,
                            height: 71.25,
                            color: const Color(0xffD4ED26),
                            text: '0',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('.');
                          },
                          child: CustomButton(
                            width: 71.25,
                            height: 71.25,
                            color: const Color(0xffD4ED26),
                            text: '.',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            buttonPressed('=');
                          },
                          child: CustomButton(
                            width: 71.25,
                            height: 71.25,
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
