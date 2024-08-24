import 'package:flutter/material.dart';
import 'package:mashroa/core/widgets/custom_drawer.dart';
import 'package:mashroa/features/calculator/presentation/views/calculator_view.dart';
import 'package:mashroa/features/sebha/presentation/views/sebha_view.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_field.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
      drawer: const CustomDrawer(),
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
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
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
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const Text(
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
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const Text(
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
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const Text(
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
