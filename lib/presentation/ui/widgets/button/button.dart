import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/config.dart';
import 'package:flutter_application_1/presentation/ui/ui.dart';

class WButton extends StatelessWidget {
  late String textButton;
  late VoidCallback onPressedButton;
  late ButtonStyle styleButton;
  static final CustomColors _colorsTheme = AppTheme().themeMode == 'light' ? CustomColors.light : CustomColors.dark;
  late Icon? iconButton = null;
  late bool leftIconButton = false;
  late bool rightIconButton = false;
  late Color? textColorButton = _colorsTheme.white;

  static const BorderRadius _borderRadius = BorderRadius.all(Radius.circular(50));
  static const double _elevation = 1;

  WButton({
    required String text,
    required VoidCallback onPressed,
    ButtonStyle? style,
    double? width,
    double? height,
    bool outline = false,
    super.key
  }) {
    textButton = text;
    onPressedButton = onPressed;
    styleButton = style ?? ElevatedButton.styleFrom(
      minimumSize: Size(width ?? double.infinity, height ?? 50),
      elevation: _elevation,
      backgroundColor: outline ? _colorsTheme.background : _colorsTheme.primary,
      side: BorderSide(width: outline ? 2 : 0, color: _colorsTheme.primary!),
      padding: const EdgeInsets.all(10),
      shape: const RoundedRectangleBorder(
        borderRadius: _borderRadius
      ),
    );
    textColorButton = outline ? _colorsTheme.primary : _colorsTheme.white;
  }
 
  WButton.medium({
    required String text,
    required VoidCallback onPressed,
    ButtonStyle? style,
    double? width,
    double? height,
    bool outline = false,
    super.key
  }) {
    textButton = text;
    onPressedButton = onPressed;
    styleButton = style ?? ElevatedButton.styleFrom(
      minimumSize: Size(width ?? 200, height ?? 50),
      elevation: _elevation,
      backgroundColor: outline ? _colorsTheme.background : _colorsTheme.primary,
      side: BorderSide(width: outline ? 2 : 0, color: _colorsTheme.primary!),
      padding: const EdgeInsets.all(10),
      shape: const RoundedRectangleBorder(
        borderRadius: _borderRadius
      ),
    );
    textColorButton = outline ? _colorsTheme.primary : _colorsTheme.white;
  }

  WButton.small({
    required String text,
    required VoidCallback onPressed,
    ButtonStyle? style,
    double? width,
    double? height,
    bool outline = false,
    super.key
  }) {
    textButton = text;
    onPressedButton = onPressed;
    styleButton = style ?? ElevatedButton.styleFrom(
      minimumSize: Size(width ?? 100, height ?? 50),
      elevation: _elevation,
      backgroundColor: outline ? _colorsTheme.background : _colorsTheme.primary,
      side: BorderSide(width: outline ? 2 : 0, color: _colorsTheme.primary!),
      padding: const EdgeInsets.all(10),
      shape: const RoundedRectangleBorder(
        borderRadius: _borderRadius
      ),
    );
    textColorButton = outline ? _colorsTheme.primary : _colorsTheme.white;
  }

  WButton.icon({
    required String text,
    required VoidCallback onPressed,
    ButtonStyle? style,
    double? width,
    double? height,
    Icon? icon,
    bool? leftIcon,
    bool? rightIcon,
    super.key
  }){
    textButton = text;
    onPressedButton = onPressed;
    styleButton = style ?? ElevatedButton.styleFrom(
      minimumSize: Size(width ?? double.infinity, height ?? 50),
      elevation: _elevation,
      backgroundColor: _colorsTheme.background,
      side: BorderSide(width: 2, color: _colorsTheme.grey5!),
      padding: const EdgeInsets.all(10),
      shape: const RoundedRectangleBorder(
        borderRadius: _borderRadius
      ),
    );
    iconButton = icon;
    leftIconButton = leftIcon ?? false;
    rightIconButton = rightIcon ?? false;
    textColorButton = _colorsTheme.grey0;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        style: styleButton,
        onPressed: () {
          onPressedButton();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            if (iconButton != null && leftIconButton) ...[
              iconButton ?? Container(),
              const SizedBox(width: 8),
            ],
            WText.bodyMedium(textButton, color: textColorButton),
            if (iconButton != null && rightIconButton) ...[
              const SizedBox(width: 8),
              iconButton ?? Container(),
            ],
          ],
        ),
      ),
    );
  }
}