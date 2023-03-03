import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFb71c1c);
const PrimaryColorLight = const Color(0xFFf05545);
const PrimaryColorDark = const Color(0xFF7f0000);

const SecondaryColor = Color.fromARGB(255, 0, 0, 0);
const SecondaryColorLight = const Color(0xFFe5ffff);
const SecondaryColorDark = const Color(0xFF82ada9);

const Background = const Color(0xFFfffdf7);
const TextColor = const Color(0xFFffffff);

class MyTheme {
  static final ThemeData defaultTheme = _buildMyTheme();

  static ThemeData _buildMyTheme() {
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      primaryColor: PrimaryColor,
      primaryColorDark: PrimaryColorDark,
      primaryColorLight: PrimaryColorLight,
      buttonTheme: base.buttonTheme.copyWith(
        buttonColor: SecondaryColor,
        textTheme: ButtonTextTheme.primary,
      ),

      scaffoldBackgroundColor: Background,
      cardColor: Background,
    );
  }
}