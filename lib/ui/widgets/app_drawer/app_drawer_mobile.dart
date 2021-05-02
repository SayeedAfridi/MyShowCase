import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myshowcase/theme/theme.dart';
import 'package:myshowcase/ui/widgets/app_drawer/app_drawer_model.dart';
import 'package:myshowcase/ui/widgets/drawer_option/drawer_option.dart';
import 'app_drawer.dart';

class AppDrawerMobilePotrait extends StatelessWidget {
  const AppDrawerMobilePotrait({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = 180;
    return Container(
      width: 280,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 16,
            color: Colors.black,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 280,
            height: height + 80,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: AppColor.lavender,
                  radius: 60,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/afridi.jpg',
                      fit: BoxFit.cover,
                      width: 110,
                      height: 110,
                    ),
                  ),
                ),
                Text(
                  'Abu Sayeed Afridi',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Software Developer',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: Theme.of(context).accentColor,
                ),
                Container(
                  padding: EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    children: AppDrawer.getDrawerOptions(context),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: height,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
            ),
          ),
        ],
      ),
    );
  }
}

class AppDrawerMobileLandscape extends StatelessWidget {
  final AppDrawerModel model;

  const AppDrawerMobileLandscape({Key? key, required this.model})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = 40;
    Radius rad = Radius.circular(20);
    return Container(
      width: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 16,
            color: Colors.black,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: height,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(bottomRight: rad),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: Theme.of(context).accentColor,
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: rad,
                      bottomRight: rad,
                    ),
                  ),
                  child: Column(
                    children: [
                      ...AppDrawer.getDrawerOptions(context),
                      Divider(color: Colors.grey[400]),
                      DrawerOption(
                        icon: model.icon,
                        title: model.isDarkMode ? 'Dark Mode' : 'Light Mode',
                        onTap: model.toggleTheme,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: height,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(topLeft: rad),
            ),
          ),
        ],
      ),
    );
  }
}
