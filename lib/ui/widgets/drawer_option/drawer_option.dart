import 'package:flutter/material.dart';
import 'package:myshowcase/models/drawer_item_data.dart';
import 'package:myshowcase/responsive/orientation_layout.dart';
import 'package:myshowcase/responsive/screen_type_layout.dart';
import 'package:myshowcase/ui/widgets/drawer_option/drawer_option_mobile.dart';
import 'package:myshowcase/ui/widgets/drawer_option/drawer_option_model.dart';
import 'package:stacked/stacked.dart';

class DrawerOption extends StatelessWidget {
  final void Function()? onTap;
  final IconData icon;
  final String title;
  const DrawerOption(
      {Key? key, this.onTap, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        potrait: (context) => DrawerOptionMobilePotrait(
          data: DrawerItem(
            icon: icon,
            title: title,
            onTap: onTap,
          ),
        ),
        landscape: (context) => DrawerOptionMobileLandscape(
          data: DrawerItem(
            icon: icon,
            title: title,
            onTap: onTap,
          ),
        ),
      ),
    );
  }
}
