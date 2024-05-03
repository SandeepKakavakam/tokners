import 'package:auto_route/auto_route.dart';
import 'package:data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../../gen/colors.gen.dart';
import '../../../gen/fonts.gen.dart';
import 'color_theme.dart';

final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    primaryColor: ColorName.white,
    scaffoldBackgroundColor: ColorName.white,
    fontFamily: FontFamily.gothic,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: NoShadowCupertinoPageTransitionsBuilder(),
        // TargetPlatform.android: CustomTransitionBuilder(),
      },
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: ColorName.white),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: ColorName.white,
      disabledColor: ColorName.white,
    ),
    textTheme: _buildTextTheme(AppearanceMode.light),
    colorScheme: lightThemeColors(),
    unselectedWidgetColor: ColorName.white,
    dividerColor: ColorName.white,
    dialogTheme: const DialogTheme(backgroundColor: ColorName.white),
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: Colors.transparent));

final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blueGrey,
    primaryColor: ColorName.white,
    scaffoldBackgroundColor: ColorName.white,
    fontFamily: FontFamily.gothic,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: ColorName.white),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: ColorName.white,
      disabledColor: ColorName.white,
    ),
    textTheme: _buildTextTheme(AppearanceMode.dark),
    colorScheme: darkThemeColors(),
    dividerColor: ColorName.white,
    unselectedWidgetColor: ColorName.white,
    dialogTheme: const DialogTheme(backgroundColor: ColorName.white),
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: Colors.transparent));

final ThemeData contrastTheme = ThemeData(
    primarySwatch: Colors.blueGrey,
    primaryColor: ColorName.white,
    scaffoldBackgroundColor: ColorName.white,
    fontFamily: FontFamily.gothic,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: ColorName.white),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: ColorName.white,
      disabledColor: ColorName.white,
    ),
    textTheme: _buildTextTheme(AppearanceMode.contrast),
    colorScheme: contrastThemeColors(),
    dividerColor: ColorName.white,
    unselectedWidgetColor: ColorName.white,
    dialogTheme: const DialogTheme(backgroundColor: ColorName.white),
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: Colors.transparent));

Color getTextColor(AppearanceMode mode) {
  switch (mode) {
    case AppearanceMode.light:
      return ColorName.white;
    case AppearanceMode.dark:
      return ColorName.white;
    case AppearanceMode.system:
      var brightness =
          SchedulerBinding.instance.platformDispatcher.platformBrightness;
      return brightness == Brightness.light
          ? ColorName.white
          : ColorName.white;
    case AppearanceMode.contrast:
      return ColorName.white;
  }
}

TextTheme _buildTextTheme(AppearanceMode mode) {
  return TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 32.0,
      color: getTextColor(mode),
      fontFamily: FontFamily.gothic,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 24.0,
      color: getTextColor(mode),
      fontFamily: FontFamily.gothic,
    ),
    displaySmall: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 20.0,
      color: getTextColor(mode),
      fontFamily: FontFamily.gothic,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.w700,
      color: getTextColor(mode),
      fontSize: 18.0,
    ),
    headlineSmall: TextStyle(
      fontWeight: FontWeight.w700,
      color: getTextColor(mode),
      fontSize: 16.0,
    ),
    titleLarge: TextStyle(
      fontWeight: FontWeight.w700,
      color: getTextColor(mode),
      fontSize: 16.0,
    ),
    titleMedium: TextStyle(
      fontWeight: FontWeight.w600,
      color: getTextColor(mode),
      fontSize: 18.0,
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.w600,
      color: getTextColor(mode),
      fontSize: 16.0,
    ),
    bodyLarge: TextStyle(
      fontWeight: FontWeight.w400,
      color: getTextColor(mode),
      fontSize: 16.0,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.w400,
      color: getTextColor(mode),
      fontSize: 14.0,
    ),
    bodySmall: TextStyle(
      fontWeight: FontWeight.w400,
      color: getTextColor(mode),
      fontSize: 12.0,
      letterSpacing: 0.0,
    ),
    labelLarge: TextStyle(
      fontWeight: FontWeight.w600,
      color: getTextColor(mode),
      fontSize: 14.0,
    ),
    labelMedium: TextStyle(
      fontWeight: FontWeight.w600,
      color: getTextColor(mode),
      fontSize: 12.0,
      letterSpacing: 0.0,
    ),
    labelSmall: TextStyle(
      fontWeight: FontWeight.w600,
      color: getTextColor(mode),
      fontSize: 12.0,
      letterSpacing: 0.0,
    ),
  );
}

class CustomTransitionBuilder extends PageTransitionsBuilder {
  const CustomTransitionBuilder();

  @override
  Widget buildTransitions<T>(
      PageRoute<T> route,
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    animation = CurvedAnimation(
        curve: Curves.fastEaseInToSlowEaseOut, parent: animation);
    return FadeTransition(opacity: animation, child: child);
  }
}
