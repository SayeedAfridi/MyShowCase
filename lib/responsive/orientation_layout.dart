import 'package:flutter/material.dart';

class OrientationLayout extends StatelessWidget {
  final Widget Function(BuildContext)? landscape;
  final Widget Function(BuildContext) potrait;

  const OrientationLayout({Key? key, this.landscape, required this.potrait})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return LayoutBuilder(builder: (context, boxConstrains) {
      if (orientation == Orientation.landscape && landscape != null) {
        return landscape!(context);
      }
      return potrait(context);
    });
  }
}
