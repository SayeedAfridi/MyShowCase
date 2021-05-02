import 'package:flutter/material.dart';
import 'package:myshowcase/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_themes/stacked_themes.dart';

class AppDrawerModel extends BaseViewModel {
  final themeService = locator<ThemeService>();
  IconData? _icon;

  AppDrawerModel() {
    _icon = themeService.isDarkMode ? Icons.wb_cloudy : Icons.wb_sunny;
  }

  IconData get icon => _icon!;

  bool get isDarkMode => themeService.isDarkMode;

  void toggleTheme() {
    themeService.toggleDarkLightTheme();
    if (themeService.isDarkMode) {
      _icon = Icons.wb_cloudy;
    } else {
      _icon = Icons.wb_sunny;
    }
    notifyListeners();
  }
}
