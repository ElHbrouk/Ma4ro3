import 'package:flutter/material.dart';

import 'core/utils/app_routes.dart';

void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'مشروع',
      locale: const Locale('ar'),
      routerConfig: AppRoutes.router,
      debugShowCheckedModeBanner: false, 
    );
  }
}
