import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/config/config.dart';

class WText extends StatelessWidget {
  late String textText;
  static final CustomColors _colorsTheme = AppTheme().themeMode == 'light' ? CustomColors.light : CustomColors.dark;
  late TextStyle? styleText;

  static const _bold = FontWeight.w700;
  static const _semiBold = FontWeight.w600;
  static const _medium = FontWeight.w500;
  static const _regular = FontWeight.w400;

  static final TextStyle styleLabelTextField = GoogleFonts.roboto(fontWeight: _regular, fontSize: 15.0, color: _colorsTheme.grey1!);
  static final TextStyle styleHintTextField = GoogleFonts.roboto(fontWeight: _regular, fontSize: 16.0, color: _colorsTheme.grey1!);

  WText(text, {super.key, TextStyle? style, Color? color}) {
    textText = text;
    styleText = style ?? GoogleFonts.roboto(fontWeight: _regular, fontSize: 15.0, color: color ?? _colorsTheme.primary);
  }

  WText.titleExtraLarge(text, {super.key, TextStyle? style, Color? color}) {
    textText = text;
    styleText = style ?? GoogleFonts.roboto(fontWeight: _bold, fontSize: 40.0, color: color ?? _colorsTheme.black);
  }

  WText.titleLarge(text, {super.key, TextStyle? style, Color? color}) {
    textText = text;
    styleText = style ?? GoogleFonts.roboto(fontWeight: _bold, fontSize: 15.0, color: color ?? _colorsTheme.black);
  }

  WText.titleMedium(text, {super.key, TextStyle? style, Color? color}) {
    textText = text;
    styleText = style ?? GoogleFonts.roboto(fontWeight: _semiBold, fontSize: 30.0, color: color ?? _colorsTheme.black);
  }

  WText.titleSmall(text, {super.key, TextStyle? style, Color? color}) {
    textText = text;
    styleText = style ?? GoogleFonts.roboto(fontWeight: _medium, fontSize: 30.0, color: color ?? _colorsTheme.black);
  }

  WText.labelLarge(text, {super.key, TextStyle? style, Color? color}) {
    textText = text;
    styleText = style ?? GoogleFonts.roboto(fontWeight: _bold, fontSize: 28.0, color: color ?? _colorsTheme.black);
  }

  WText.labelMedium(text, {super.key, TextStyle? style, Color? color}) {
    textText = text;
    styleText = style ?? GoogleFonts.roboto(fontWeight: _semiBold, fontSize: 26.0, color: color ?? _colorsTheme.black);
  }

  WText.labelSmall(text, {super.key, TextStyle? style, Color? color}) {
    textText = text;
    styleText = style ?? GoogleFonts.roboto(fontWeight: _regular, fontSize: 17.0, color: color ?? _colorsTheme.grey0);
  }

  WText.bodyLarge(text, {super.key, TextStyle? style, Color? color}) {
    textText = text;
    styleText = style ?? GoogleFonts.roboto(fontWeight: _semiBold, fontSize: 18.0, color: color ?? _colorsTheme.grey1);
  }

  WText.bodyMedium(text, {super.key, TextStyle? style, Color? color}) {
    textText = text;
    styleText = style ?? GoogleFonts.roboto(fontWeight: _medium, fontSize: 16.0, color: color ?? _colorsTheme.grey3);
  }

  WText.bodySmall(text, {super.key, TextStyle? style, Color? color}) {
    textText = text;
    styleText = style ?? GoogleFonts.roboto(fontWeight: _regular, fontSize: 15.0, color: color ?? _colorsTheme.grey2);
  }

  WText.displayLarge(text, {super.key, TextStyle? style, Color? color}) {
    textText = text;
    styleText = style ?? GoogleFonts.roboto(fontWeight: _medium, fontSize: 15.0, color: color ?? _colorsTheme.grey3);
  }

  WText.displayMedium(text, {super.key, TextStyle? style, Color? color}) {
    textText = text;
    styleText = style ?? GoogleFonts.roboto(fontWeight: _medium, fontSize: 15.0, color: color ?? _colorsTheme.grey3);
  }

  WText.displaySmall(text, {super.key, TextStyle? style, Color? color}) {
    textText = text;
    styleText = style ?? GoogleFonts.roboto(fontWeight: _medium, fontSize: 15.0, color: color ?? _colorsTheme.grey5);
  }

  factory WText.custom(
    text,
    {
      FontWeight? fontWeight,
      Color? color,
      double? height,
      double? fontSize,
      double? letterSpacing,
      TextDecoration? decoration,
    }
  ) {
    TextStyle customStyle = GoogleFonts.roboto(
      fontWeight: fontWeight ?? _regular,
      fontSize: fontSize ?? 30.0,
      color: color ?? _colorsTheme.black,
      height: height ?? height,
      letterSpacing: letterSpacing ?? 0,
      decoration: decoration ?? TextDecoration.none,
    );

    return WText(text, style: customStyle);
  }

  @override
  Widget build(BuildContext context) {
    return Text(textText, style: styleText);
  }
}