import 'package:flutter/material.dart';
import 'package:myshowcase/enums/device_screen_type.dart';
import 'package:myshowcase/responsive/responsive_builder.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;

  const ScreenTypeLayout(
      {Key? key, required this.mobile, this.tablet, this.desktop})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizinginformation) {
        if (sizinginformation.deviceScreenType == DeviceScreenType.Tablet) {
          if (tablet != null) {
            return tablet!;
          }
        }
        if (sizinginformation.deviceScreenType == DeviceScreenType.Desktop) {
          if (desktop != null) {
            return desktop!;
          }
        }
        return mobile;
      },
    );
  }
}
