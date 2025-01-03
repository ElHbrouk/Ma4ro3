import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/image_assets.dart';
import 'drawer_list_tile_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.sizeOf(context).width * 0.7,
      backgroundColor: AppColors.drawerBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: Image.asset(
                ImageAssets.imagesBus,
              ),
            ),
            Expanded(
              child: DrawerListItemListView(),
            ),
          ],
        ),
      ),
    );
  }
}
