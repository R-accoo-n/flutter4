import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData darkTheme = ThemeData(
  backgroundColor: Colors.white10,
  useMaterial3: true,
  brightness: Brightness.dark,
  primaryColor: Colors.white12,
  scaffoldBackgroundColor: Colors.white10,
  fontFamily: "Lato",
  iconTheme: const IconThemeData(color: Colors.white),
  appBarTheme: AppBarTheme(
      backgroundColor: Colors.black12,
      iconTheme: const IconThemeData(color: Colors.white),
      titleTextStyle:
          const TextTheme(headline4: TextStyle(color: Colors.white,  fontSize: 17))
              .headline4),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    showSelectedLabels: false,
    showUnselectedLabels: false,
    unselectedItemColor: Colors.white,
    selectedItemColor: Colors.white30,
    backgroundColor: Colors.white10,
  ),
  textTheme: const TextTheme(bodyMedium: TextStyle()).apply(bodyColor: Colors.white, displayColor: Colors.white),
);

ThemeData lightTheme = ThemeData(
    backgroundColor: Colors.black12,
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.white70,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Lato",
    iconTheme: const IconThemeData(
      color: Colors.black87,
    ),
    appBarTheme: AppBarTheme(
        surfaceTintColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle:
            const TextTheme(headline4: TextStyle(color: Colors.black))
                .headline4),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.black54,
      backgroundColor: Colors.white70,
    ));

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme = lightTheme;
  ThemeType themeType = ThemeType.light;

  ThemeProvider() {
    setInitialTheme();
  }

  Future<void> setTheme(String theme) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('theme', theme);
  }

  Future<String> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('theme').toString();
  }

  setInitialTheme() {
    ThemeData theme = lightTheme;
    getTheme().then((value) {
      if (value != "null") {
        theme = (value == "dark") ? darkTheme : lightTheme;
      }
      currentTheme = theme;
      themeType = (theme == lightTheme) ? ThemeType.light : ThemeType.dark;
      notifyListeners();
    });
  }

  changeCurrentTheme() {
    if (currentTheme == darkTheme) {
      themeType = ThemeType.light;
      currentTheme = lightTheme;
    } else {
      themeType = ThemeType.dark;
      currentTheme = darkTheme;
    }
    setTheme(themeType.name);
    notifyListeners();
  }
}

enum ThemeType { light, dark }
