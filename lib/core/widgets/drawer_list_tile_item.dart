import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/app_styles.dart';

class DrawerListTileItem extends StatelessWidget {
  const DrawerListTileItem({
    super.key,
    required this.title,
    required this.onTap,
    required this.image,
  });
  final String title;
  final VoidCallback onTap;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        textAlign: TextAlign.end,
        title,
        style: AppStyles.boldBlack18(context),
      ),
      leading: image == null
          ? null
          : SvgPicture.asset(
              image!,
            ),
      onTap: onTap,
    );
  }
}
