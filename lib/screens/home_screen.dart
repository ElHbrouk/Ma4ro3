import 'package:flutter/material.dart';
import 'package:mashroa/screens/calculator_screen.dart';
import '../components/custom_button.dart';
import '../components/custom_text_field.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  var individual = TextEditingController();

  var totalCost = TextEditingController();

  var noOfPeople = TextEditingController();

  late int overPrice = 0;

  late int moneyWanted = 0;

  late int predictdeCost = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: Column(
          children:  [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black87,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                )
              ),
              accountName: const Text(
                'Omar Elhbrouk',
                style: TextStyle(
                  // color: Colors.black,
                ),
              ),
              accountEmail: const Text(
                'omar.elhbrouk@gmail.com',
                style: TextStyle(
                  // color: Colors.black,
                ),
              ),
            ),
             ListTile(
              title: const Text('الحاسبة'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CalculatorScreen(),),);
              },
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
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
                      iconSize: 40,
                    ),
                    Image.asset(
                      'assets/images/mashro3.png',
                      height: 30,
                      width: 97,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'أجره الفرد',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                          textController: individual,
                          borderWidth: 1.5,
                          width: 315,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'المبلغ اللي جمعته',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                          textController: totalCost,
                          borderWidth: 1.5,
                          width: 315,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'عدد الاشخاص',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                          textController: noOfPeople,
                          borderWidth: 1.5,
                          width: 315,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  onTap: () {
                    int totalCostInt = int.parse(totalCost.text);
                    setState(() {
                      predictdeCost = int.parse(individual.text) *
                          int.parse(noOfPeople.text);
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
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      )),
                  width: 315,
                  height: 123,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
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
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              'المبلغ الكلي المتوقع',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
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
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              'مبلغ زائد عن الحاجة',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
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
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              'مبلغ بحاجة إليه',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
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
