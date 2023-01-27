import 'package:flutter/material.dart';
import 'package:my_favorite_list_using_provider/assets/colors.dart';

abstract class LightTheme {
  static ThemeData lightTheme() => ThemeData(
        scaffoldBackgroundColor: scaffoldBackground,
        fontFamily: '',
        appBarTheme: const AppBarTheme(color: white),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        unselectedWidgetColor: Colors.black,
        textTheme: const TextTheme(
          headlineLarge: headline1,
          headlineMedium: headline2,
          headlineSmall: headline3,
          bodyLarge: bodyText1,
          bodyMedium: bodyText2,
          bodySmall: subTitle1,
          labelSmall: subTitle2,
        ),
        colorScheme: const ColorScheme(
          background: white,
          brightness: Brightness.light,
          primary: malachite,
          secondary: torchRed,
          error: torchRed,
          surface: malachite,
          onPrimary: white,
          onSecondary: torchRed,
          onBackground: white,
          onError: torchRed,
          onSurface: white,
        ),
      );

  // Fonts
  static const headline1 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: darkGreen,
  );
  static const headline2 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w400,
    color: darkGreen,
  );
  static const headline3 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: darkGreen,
  );

  static const bodyText1 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: malachite,
  );

  static const bodyText2 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: darkGreen,
  );

  static const subTitle1 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: darkGreen,
  );

  static const subTitle2 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: darkGreen,
  );

  static const caption = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    color: torchRed,
  );

  static const button = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: white,
  );

  static const overline = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: darkGreen,
  );
}
