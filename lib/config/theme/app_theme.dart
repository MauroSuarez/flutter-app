import 'package:flutter/material.dart';
import '../config.dart';

class AppTheme {
  String? _themeMode = 'ligth';
  static final AppTheme _instance = AppTheme._();

  factory AppTheme() {
    return _instance;
  }

  set themeMode(String theme) => _themeMode = theme;
  String get themeMode {
    return _themeMode!;
  }

  AppTheme._();

  static final ThemeData light = ThemeData(
    extensions: <ThemeExtension<dynamic>>[
      CustomColors.light
    ],
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );

  static final ThemeData dark = ThemeData(
    extensions: <ThemeExtension<dynamic>>[
      CustomColors.dark
    ],
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );
}
