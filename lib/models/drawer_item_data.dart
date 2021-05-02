import 'package:flutter/cupertino.dart';

class DrawerItem {
  final String title;
  final IconData icon;
  final void Function()? onTap;

  DrawerItem({required this.title, required this.icon, this.onTap});
}
