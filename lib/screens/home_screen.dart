import 'package:flutter/material.dart';
import '../components/custom_button.dart';
import '../components/custom_text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                        ),
                        iconSize: 36,
                      ),
                      const Text(
                        'مشروع',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const Text(
                              'أجره الفرد',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextField(
                              borderWidth: 1.5,
                              width: 120,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        Column(
                          children: [
                            const Text(
                              'المبلغ اللي جمعته',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextField(
                              borderWidth: 1.5,
                              width: 120,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            const Text('عليه'),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextField(
                              borderWidth: 1.5,
                              width: 50,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextField(
                              borderWidth: 1.5,
                              width: 50,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextField(
                              borderWidth: 1.5,
                              width: 50,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            const Text('له'),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextField(
                              borderWidth: 1.5,
                              width: 50,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextField(
                              borderWidth: 1.5,
                              width: 50,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextField(
                              borderWidth: 1.5,
                              width: 50,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            const Text('المبلغ'),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextField(
                              borderWidth: 1.5,
                              width: 70,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextField(
                              borderWidth: 1.5,
                              width: 70,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextField(
                              borderWidth: 1.5,
                              width: 70,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            const Text('كم شخص؟'),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextField(
                              borderWidth: 1.5,
                              width: 70,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextField(
                              borderWidth: 1.5,
                              width: 70,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextField(
                              borderWidth: 1.5,
                              width: 70,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        )),
                    width: 300,
                    height: 120,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                '0',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'المبلغ الكلي المتوقع',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                '0',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'مبلغ زائد عن الحاجة',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                '0',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'مبلغ بحاجة إليه',
                                style: TextStyle(fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
