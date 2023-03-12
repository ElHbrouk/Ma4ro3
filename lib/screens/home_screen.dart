import 'package:flutter/material.dart';
import 'package:mashroa/screens/calculator_screen.dart';
import '../components/custom_button.dart';
import '../components/custom_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
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
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.black87,
              ),
              accountName: Text(
                'Omar Elhbrouk',
                style: TextStyle(
                    // color: Colors.black,
                    ),
              ),
              accountEmail: Text(
                'omar.elhbrouk@gmail.com',
                style: TextStyle(
                    // color: Colors.black,
                    ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.calculate_outlined),
              title: Text(
                'الحاسبة',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 24.sp,
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
            )
          ],
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
