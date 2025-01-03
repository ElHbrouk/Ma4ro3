import 'package:flutter/material.dart';
import 'package:mashroa/features/home/view/widgets/display_fare_box.dart';
import '../../../../core/widgets/custom_app_bar.dart';

import '../../../../core/widgets/custom_button.dart';
import 'text_field_with_title.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
    required this.scaffoldKey,
  });
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  var individual = TextEditingController();

  var totalCost = TextEditingController();

  var noOfPeople = TextEditingController();

  late double overPrice = 0;

  late double moneyWanted = 0;

  late double predictdeCost = 0;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 30,
              children: [
                CustomAppBar(scaffoldKey: widget.scaffoldKey),
                Column(
                  spacing: 15,
                  children: [
                    TextFieldWithTitle(
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return 'أدخل أجرة الفرد';
                        } else {
                          return null;
                        }
                      },
                      individual: individual,
                      text: 'أجره الفرد',
                    ),
                    TextFieldWithTitle(
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return 'أدخل المبلغ اللي جمعته';
                        } else {
                          return null;
                        }
                      },
                      individual: totalCost,
                      text: 'المبلغ اللي جمعته',
                    ),
                    TextFieldWithTitle(
                      validator: (p0) {
                        if (p0!.isEmpty) {
                          return 'أدخل عدد الاشخاص';
                        } else {
                          return null;
                        }
                      },
                      individual: noOfPeople,
                      text: 'عدد الاشخاص',
                    ),
                  ],
                ),
                CustomButton(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
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
                    }
                  },
                ),
                DisplayFareBox(
                  predictdeCost: predictdeCost,
                  overPrice: overPrice,
                  moneyWanted: moneyWanted,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
