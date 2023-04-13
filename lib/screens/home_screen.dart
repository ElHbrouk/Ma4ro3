import 'package:flutter/material.dart';
import 'package:mashroa/screens/calculator_screen.dart';
import 'package:mashroa/screens/sebha.dart';
import '../components/custom_button.dart';
import '../components/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  var individual = TextEditingController();

  var totalCost = TextEditingController();

  var noOfPeople = TextEditingController();

  late double overPrice = 0;

  late double moneyWanted = 0;

  late double predictdeCost = 0;

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
          padding: EdgeInsets.all(25.0.sp),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      padding: const EdgeInsetsDirectional.all(0),
                      onPressed: () {
                        return scaffoldKey.currentState!.openDrawer();
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
                  height: 30.h,
                ),
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'أجره الفرد',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        CustomTextField(
                          textController: individual,
                          borderWidth: 1.5.w,
                          width: 315.w,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'المبلغ اللي جمعته',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        CustomTextField(
                          textController: totalCost,
                          borderWidth: 1.5.w,
                          width: 315.w,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'عدد الاشخاص',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        CustomTextField(
                          textController: noOfPeople,
                          borderWidth: 1.5.w,
                          width: 315.w,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomButton(
                  width: 315,
                  height: 55,
                  onTap: () {
                    double totalCostInt = double.parse(totalCost.text);
                    setState(() {
                      predictdeCost = double.parse(individual.text) *
                          double.parse(noOfPeople.text);
                      if (totalCostInt < predictdeCost) {
                        overPrice = 0;
                        moneyWanted = predictdeCost - totalCostInt;
                      } else {
                        overPrice = totalCostInt - predictdeCost;
                        moneyWanted = 0;
                      }
                    });
                  },
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.sp),
                    border: Border.all(
                      color: Colors.black,
                      width: 2.w,
                    ),
                  ),
                  width: 315.w,
                  height: 123.h,
                  child: Padding(
                    padding: EdgeInsets.all(12.0.sp),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '$predictdeCost',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                            ),
                            Text(
                              'المبلغ الكلي المتوقع',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '$overPrice',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                            ),
                            Text(
                              'مبلغ زائد عن الحاجة',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '$moneyWanted',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                            ),
                            Text(
                              'مبلغ بحاجة إليه',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Column(
//                           children: [
//                             const Text('عليه'),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             CustomContainer(
//                             ),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             CustomContainer(
//
//                             ),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             CustomContainer(
//
//                             ),
//                           ],
//                         ),
//                         const SizedBox(
//                           width: 10,
//                         ),
//                         Column(
//                           children: [
//                             const Text('له'),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             CustomContainer(),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             CustomContainer(),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             CustomContainer(),
//                           ],
//                         ),
//                         const SizedBox(
//                           width: 10,
//                         ),
//                         Column(
//                           children: [
//                             const Text('المبلغ'),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             CustomTextField(
//                               borderWidth: 1.5,
//                               width: 87.5,
//                             ),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             CustomTextField(
//                               borderWidth: 1.5,
//                               width: 87.5,
//                             ),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             CustomTextField(
//                               borderWidth: 1.5,
//                               width: 87.5,
//                             ),
//                           ],
//                         ),
//                         const SizedBox(
//                           width: 10,
//                         ),
//                         Column(
//                           children: [
//                             const Text('كم شخص؟'),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             CustomTextField(
//                               borderWidth: 1.5,
//                               width: 87.5,
//                             ),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             CustomTextField(
//                               borderWidth: 1.5,
//                               width: 87.5,
//                             ),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             CustomTextField(
//                               borderWidth: 1.5,
//                               width: 87.5,
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
