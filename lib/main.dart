// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:myshowcase/app/app.locator.dart';
import 'package:myshowcase/showcase_app.dart';
import 'package:stacked_themes/stacked_themes.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await ThemeManager.initialise();
  // runApp(DevicePreview(
  //   builder: (context) => ShowCaseApp(),
  //   enabled: true,
  // ));
  runApp(ShowCaseApp());
}
