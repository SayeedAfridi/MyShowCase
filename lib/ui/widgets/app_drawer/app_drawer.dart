import 'package:flutter/material.dart';
import 'package:myshowcase/responsive/orientation_layout.dart';
import 'package:myshowcase/responsive/screen_type_layout.dart';
import 'package:myshowcase/ui/widgets/app_drawer/app_drawer_mobile.dart';
import 'package:myshowcase/ui/widgets/app_drawer/app_drawer_model.dart';
import 'package:myshowcase/ui/widgets/drawer_option/drawer_option.dart';
import 'package:stacked/stacked.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppDrawerModel>.reactive(
      builder: (context, model, child) => ScreenTypeLayout(
        mobile: OrientationLayout(
          potrait: (context) => AppDrawerMobilePotrait(),
          landscape: (context) => AppDrawerMobileLandscape(model: model),
        ),
      ),
      viewModelBuilder: () => AppDrawerModel(),
    );
  }

  static List<Widget> getDrawerOptions(BuildContext context) {
    return [
      DrawerOption(
        onTap: () {},
        title: 'Home',
        icon: Icons.home,
      ),
      DrawerOption(
        onTap: () {},
        title: 'Send Message',
        icon: Icons.send,
      ),
      Divider(color: Colors.grey[400]),
      DrawerOption(
        onTap: () {},
        title: 'About',
        icon: Icons.info,
      ),
    ];
  }
}
