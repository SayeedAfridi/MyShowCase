import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myshowcase/models/drawer_item_data.dart';
import 'package:myshowcase/shared/ui_helpers.dart';

class DrawerOptionMobilePotrait extends StatelessWidget {
  final DrawerItem data;
  const DrawerOptionMobilePotrait({Key? key, required this.data})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).backgroundColor,
      child: InkWell(
        onTap: data.onTap,
        splashColor: Theme.of(context).accentColor,
        child: Container(
          margin: EdgeInsets.all(5),
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Row(
            children: [
              Icon(
                data.icon,
                size: 28,
              ),
              horizontalSpaceMedium,
              Text(
                data.title,
                style: GoogleFonts.poppins().copyWith(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerOptionMobileLandscape extends StatelessWidget {
  final DrawerItem data;
  const DrawerOptionMobileLandscape({Key? key, required this.data})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).backgroundColor,
      child: InkWell(
        onTap: data.onTap,
        splashColor: Theme.of(context).accentColor,
        child: Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(10),
          child: Icon(
            data.icon,
            size: 28,
          ),
        ),
      ),
    );
  }
}
