import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    fontFamily: 'Baloo 2',
    scaffoldBackgroundColor: Color.fromRGBO(0, 20, 39, 1),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Color.fromRGBO(237, 242, 244, 1),
        fontSize: 18,
      ),
      bodyText2: TextStyle(
        color: Color.fromRGBO(241, 250, 238, 1),
        fontSize: 20,
      ),
      button: TextStyle(
        color: Color.fromRGBO(237, 242, 244, 1),
        fontSize: 18,
      ),
      headline1: TextStyle(
        color: Color.fromRGBO(241, 250, 238, 1),
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
      headline2: TextStyle(
        color: Color.fromRGBO(237, 242, 244, 1),
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Color.fromRGBO(43, 45, 66, 1),
    ),
    buttonColor: Color.fromRGBO(230, 57, 70, 1),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Color.fromRGBO(241, 250, 238, 1)),
    backgroundColor: Color.fromRGBO(29, 53, 87, 1),
    cardColor: Color.fromRGBO(43, 45, 66, 1),
    primaryColor: Color.fromRGBO(29, 53, 87, 1),
    iconTheme: IconThemeData(
      color: Color.fromRGBO(43, 45, 66, 1),
    ),
    bannerTheme: MaterialBannerThemeData(
      backgroundColor: Color.fromRGBO(230, 57, 70, 1),
    ),
    colorScheme: ColorScheme.dark(),
  );

  static final lightTheme = ThemeData(
    fontFamily: 'Baloo 2',
    scaffoldBackgroundColor: Color.fromRGBO(237, 242, 244, 1),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Color.fromRGBO(43, 45, 66, 1),
        fontSize: 18,
      ),
      bodyText2: TextStyle(
        color: Color.fromRGBO(43, 45, 66, 1),
        fontSize: 20,
      ),
      button: TextStyle(
        color: Color.fromRGBO(43, 45, 66, 1),
        fontSize: 18,
      ),
      headline1: TextStyle(
        color: Color.fromRGBO(43, 45, 66, 1),
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
      headline2: TextStyle(
        color: Color.fromRGBO(43, 45, 66, 1),
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Color.fromRGBO(141, 153, 174, 1),
    ),
    buttonColor: Color.fromRGBO(230, 57, 70, 1),
    textButtonTheme: TextButtonThemeData(),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color.fromRGBO(0, 8, 20, 1),
    ),
    backgroundColor: Color.fromRGBO(241, 250, 238, 1),
    cardColor: Color.fromRGBO(141, 153, 174, 1),
    primaryColor: Color.fromRGBO(230, 57, 70, 1),
    iconTheme: IconThemeData(
      color: Color.fromRGBO(241, 250, 238, 1),
    ),
    bannerTheme: MaterialBannerThemeData(
      backgroundColor: Color.fromRGBO(230, 57, 70, 1),
    ),
    colorScheme: ColorScheme.light(),
  );
}
