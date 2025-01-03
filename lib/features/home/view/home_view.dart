import 'package:flutter/material.dart';

import '../../../core/widgets/custom_drawer.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      body: HomeViewBody(scaffoldKey: scaffoldKey),
    );
  }
}
