import 'package:flutter/material.dart';
import 'package:myshowcase/theme/theme.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'app/app.router.dart';

class ShowCaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultThemeMode: ThemeMode.dark,
      darkTheme: kDarkTheme,
      lightTheme: kLightTheme,
      builder: (context, lightTheme, darkTheme, themeMode) => MaterialApp(
        title: 'My Show Case',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: themeMode,
        initialRoute: Routes.homeView,
        onGenerateRoute: StackedRouter().onGenerateRoute,
        navigatorKey: StackedService.navigatorKey,
      ),
    );
  }
}
