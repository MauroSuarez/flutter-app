
import 'package:flutter/material.dart';

import '../helpers/hexcolor.dart';

@immutable
class CustomColors extends ThemeExtension<CustomColors> {

  const CustomColors({
    required this.primary,
    required this.secondary,
    required this.background,
    required this.white,
    required this.black,
    required this.grey0,
    required this.grey1,
    required this.grey2,
    required this.grey3,
    required this.grey4,
    required this.grey5,
    required this.greyOutline,
    required this.searchBg,
    required this.success,
    required this.warning,
    required this.error,
    required this.disabled,
    required this.link,
  });

  final Color? primary;
  final Color? secondary;
  final Color? background;
  final Color? white;
  final Color? black;
  final Color? grey0;
  final Color? grey1;
  final Color? grey2;
  final Color? grey3;
  final Color? grey4;
  final Color? grey5;
  final Color? greyOutline;
  final Color? searchBg;
  final Color? success;
  final Color? warning;
  final Color? error;
  final Color? disabled;
  final Color? link;

  @override
  ThemeExtension<CustomColors> copyWith({
    Color? primary,
    Color? secondary,
    Color? background,
    Color? white,
    Color? black,
    Color? grey0,
    Color? grey1,
    Color? grey2,
    Color? grey3,
    Color? grey4,
    Color? grey5,
    Color? greyOutline,
    Color? searchBg,
    Color? success,
    Color? warning,
    Color? error,
    Color? disabled,
    Color? link,
  }) {
    return CustomColors(
      primary: success ?? this.success,
      secondary: secondary ?? this.secondary,
      background: background ?? this.background,
      white: this.white,
      black: this.black,
      grey0: this.grey0,
      grey1: this.grey1,
      grey2: this.grey2,
      grey3: this.grey3,
      grey4: this.grey4,
      grey5: this.grey5,
      greyOutline: this.greyOutline,
      searchBg: this.searchBg,
      success: this.success,
      warning: this.warning,
      error: this.error,
      disabled: this.disabled,
      link: this.link,
    );
  }

  @override
  ThemeExtension<CustomColors> lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      primary: Color.lerp(primary, other.primary, t),
      secondary: Color.lerp(secondary, other.secondary, t),
      background: Color.lerp(background, other.background, t),
      white: Color.lerp(white, other.white, t),
      black: Color.lerp(black, other.black, t),
      grey0: Color.lerp(grey0, other.grey0, t),
      grey1: Color.lerp(grey1, other.grey1, t),
      grey2: Color.lerp(grey2, other.grey2, t),
      grey3: Color.lerp(grey3, other.grey3, t),
      grey4: Color.lerp(grey4, other.grey4, t),
      grey5: Color.lerp(grey5, other.grey5, t),
      greyOutline: Color.lerp(greyOutline, other.greyOutline, t),
      searchBg: Color.lerp(searchBg, other.searchBg, t),
      success: Color.lerp(success, other.success, t),
      warning: Color.lerp(warning, other.warning, t),
      error: Color.lerp(error, other.error, t),
      disabled: Color.lerp(disabled, other.disabled, t),
      link: Color.lerp(link, other.link, t)
    );
  }

  static CustomColors light = CustomColors(
    primary: HexColor('#2089dc'),
    secondary: HexColor('#ca71eb'),
    background: HexColor('#ffffff'),
    white: HexColor('#ffffff'),
    black: HexColor('#242424'),
    grey0: HexColor('#393e42'),
    grey1: HexColor('#43484d'),
    grey2: HexColor('#5e6977'),
    grey3: HexColor('#86939e'),
    grey4: HexColor('#bdc6cf'),
    grey5: HexColor('#e1e8ee'),
    greyOutline: HexColor('#bbb'),
    searchBg: HexColor('#303337'),
    success: HexColor('#52c41a'),
    warning: HexColor('#ff190c'),
    error: HexColor('#faad14'),
    disabled: const Color.fromRGBO(185, 184, 185, 0.984),
    link: HexColor('#2089dc'),
  );

  static CustomColors dark = CustomColors(
    primary: HexColor('#439ce0'),
    secondary: HexColor('#aa49eb'),
    background: HexColor('#080808'),
    white: HexColor('#080808'),
    black: HexColor('#f2f2f2'),
    grey0: HexColor('#e1e8ee'),
    grey1: HexColor('#bdc6cf'),
    grey2: HexColor('#86939e'),
    grey3: HexColor('#5e6977'),
    grey4: HexColor('#43484d'),
    grey5: HexColor('#393e42'),
    greyOutline: HexColor('#bbb'),
    searchBg: HexColor('#303337'),
    success: HexColor('#439946'),
    warning: HexColor('#cfbe27'),
    error: HexColor('#bf2c24'),
    disabled: const Color.fromRGBO(185, 184, 185, 0.984),
    link: HexColor('#439ce0'),
  );
}