
import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../../gen/colors.gen.dart';
import '../../../main.dart';

ColorScheme lightThemeColors() {
  return const ColorScheme(
      brightness: Brightness.light,
      primary: ColorName.white,
      onPrimary: ColorName.white,
      secondary: ColorName.white,
      onSecondary: ColorName.white,
      error: ColorName.white,
      onError: ColorName.white,
      background: ColorName.white,
      onBackground: ColorName.white,
      surface: ColorName.white,
      onSurface: ColorName.white,
      outline: ColorName.white);
}

ColorScheme darkThemeColors() {
  return const ColorScheme(
      brightness: Brightness.dark,
      primary: ColorName.white,
      onPrimary: ColorName.white,
      secondary: ColorName.white,
      onSecondary: ColorName.white,
      error: ColorName.white,
      onError: ColorName.white,
      background: ColorName.white,
      onBackground: ColorName.white,
      surface: ColorName.white,
      onSurface: ColorName.white,
      outline: ColorName.white);
}

ColorScheme contrastThemeColors() {
  return const ColorScheme(
      brightness: Brightness.light,
      primary: ColorName.white,
      onPrimary: ColorName.white,
      secondary: ColorName.white,
      onSecondary: ColorName.white,
      error: ColorName.white,
      onError: ColorName.white,
      background: ColorName.white,
      onBackground: ColorName.white,
      surface: ColorName.white,
      onSurface: ColorName.white,
      outline: ColorName.white);
}

class ThemeColorName {
  static Color getColor(
      {required Color lightColor,
      required Color darkColor,
      required Color contrastColor}) {
    switch (themeManager.currentTheme) {
      case AppearanceMode.light:
        return lightColor;
      case AppearanceMode.dark:
        return darkColor;
      case AppearanceMode.system:
        return SchedulerBinding
                    .instance.platformDispatcher.platformBrightness ==
                Brightness.dark
            ? darkColor
            : lightColor;
      case AppearanceMode.contrast:
        return contrastColor;
      default:
        return lightColor;
    }
  }
  static Color get dashboardBg => getColor(
      lightColor: ColorName.white,
      darkColor: Colors.black,
      contrastColor: Colors.white30);


}
