import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myshowcase/app/app.locator.dart';
import 'package:myshowcase/app/app.logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_themes/stacked_themes.dart';

class HomeViewModel extends BaseViewModel {
  final log = getLogger('HomeViewModel');
  final themeService = locator<ThemeService>();
  IconData _icon = Icons.wb_cloudy;

  IconData get icon => _icon;

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
