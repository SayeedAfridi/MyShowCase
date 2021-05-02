part of 'theme.dart';

ThemeData kDarkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColor.gunmetal,
  accentColor: AppColor.pastelOrange,
  backgroundColor: AppColor.independence,
  scaffoldBackgroundColor: AppColor.gunmetal,
  floatingActionButtonTheme: kFabDarkTheme,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

FloatingActionButtonThemeData kFabDarkTheme = FloatingActionButtonThemeData(
  backgroundColor: AppColor.pastelOrange,
  foregroundColor: Colors.white,
);
