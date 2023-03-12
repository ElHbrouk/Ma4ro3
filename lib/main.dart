import 'package:flutter/material.dart';
import 'package:mashroa/screens/calculator_screen.dart';
import 'package:mashroa/screens/home_screen.dart';

void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

