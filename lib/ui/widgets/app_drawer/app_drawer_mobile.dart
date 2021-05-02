import 'package:flutter/material.dart';
import 'package:myshowcase/ui/widgets/app_drawer/app_drawer_model.dart';
import 'package:myshowcase/ui/widgets/drawer_option/drawer_option.dart';
import 'app_drawer.dart';

class AppDrawerMobile extends StatelessWidget {
  final AppDrawerModel model;

  const AppDrawerMobile({Key? key, required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;

    return Container(
      width: orientation == Orientation.portrait ? 250 : 60,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 16,
            color: Colors.black,
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          children: [
            ...AppDrawer.getDrawerOptions(context),
            if (orientation == Orientation.landscape)
              DrawerOption(
                icon: model.icon,
                title: model.isDarkMode ? 'Dark Mode' : 'Light Mode',
                onTap: model.toggleTheme,
              ),
          ],
        ),
      ),
    );
  }
}
