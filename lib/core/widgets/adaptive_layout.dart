import 'package:flutter/material.dart';
import '../utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    if (width < SizeConfig.mobile) {
      return mobileLayout(context);
    } else if (width < SizeConfig.tablet) {
      return tabletLayout(context);
    } else {
      return desktopLayout(context);
    }
  }
}
