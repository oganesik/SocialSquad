import 'package:socialsquad/core/theme/theme.dart';
import 'package:flutter/material.dart';

abstract class AppThemes {
  static final darkTheme = ThemeData(
    hintColor: Const.darkText,
    scaffoldBackgroundColor: Const.phiol,
    colorScheme: const ColorScheme(
      background: Const.darkBackground,
      onBackground: Const.phiol,
      error: Const.errorColor,
      onError: Const.white,
      primary: Const.darkBackground,
      onPrimary: Const.phiol,
      secondary: Const.darkText,
      onSecondary: Const.phiol,
      surface: Const.backroundDay,
      onSurface: Const.phiol,
      tertiary: Const.phiol,
      onTertiary: Const.darkBackground,
      brightness: Brightness.dark,
    ),
  );
}
