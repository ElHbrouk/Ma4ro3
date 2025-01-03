import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../data/drawer_item_model.dart';
import '../utils/app_routes.dart';
import '../utils/image_assets.dart';

import 'drawer_list_tile_item.dart';

class DrawerListItemListView extends StatelessWidget {
  const DrawerListItemListView({
    super.key,
  });

  final List<DrawerItemModel> items = const [
    DrawerItemModel(
      title: 'حساب أجرة موحده',
      image: null,
      route: AppRoutes.homeVeiw,
    ),
    DrawerItemModel(
      title: 'حساب أجرة مختلفة',
      image: null,
      route: AppRoutes.calculatorView,
    ),
    DrawerItemModel(
      title: 'الآلة الحاسبة',
      image: ImageAssets.imagesCalculateLogo,
      route: AppRoutes.calculatorView,
    ),
    DrawerItemModel(
      title: ' دعاء السفر',
      image: ImageAssets.imagesPray,
      route: AppRoutes.calculatorView,
    ),
    DrawerItemModel(
      title: 'تسبيح',
      image: ImageAssets.imagesTasbeh,
      route: AppRoutes.sebhaView,
    ),
    DrawerItemModel(
      title: 'X/O لعبة',
      image: ImageAssets.imagesXo,
      route: AppRoutes.calculatorView,
    ),
    DrawerItemModel(
      title: 'قيم التطبيق',
      image: ImageAssets.imagesRate,
      route: AppRoutes.calculatorView,
    ),
    DrawerItemModel(
      title: 'تواصل معنا',
      image: ImageAssets.imagesContactUs,
      route: AppRoutes.calculatorView,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return DrawerListTileItem(
            title: items[index].title,
            onTap: () {
              var currentRoute = GoRouterState.of(context).uri.toString();

              if (currentRoute == items[index].route) {
                context.pop();
              } else {
                context.go(
                  items[index].route,
                );
              }
            },
            image: items[index].image,
          );
        });
  }
}
