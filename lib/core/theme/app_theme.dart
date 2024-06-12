import 'package:flutter/material.dart';
import 'package:portfolio/core/color/colors.dart';
import 'package:flutter/scheduler.dart';

class AppTheme {
  static ThemeData themeData( BuildContext context) {
    return  ThemeColors.darkTheme;
  }
}

class ThemeColors {
  const ThemeColors._();


  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    // primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      button: TextStyle(color: darkTextColor),
    ),
    appBarTheme:const  AppBarTheme(
      backgroundColor: Colors.black,
    ),
  );
  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;
}

extension ThemeExtras on ThemeData {
  Color get navBarColor => brightness == Brightness.light
      ? const Color(0xffF0F0F0)
      : const Color(0xFF00040F);
  //
  Color get textColor => brightness == Brightness.light
      ? const Color(0xFF403930)
      : const Color(0xFFFFF8F2);
  //
  Color get secondaryColor => const Color(0xFFFE53BB);
  //
  Gradient get serviceCard =>
      brightness == Brightness.light ? grayWhite : grayBack;

  //
  Gradient get contactCard =>
      brightness == Brightness.light ? grayWhite : contactGradi;
}
