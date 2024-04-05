import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/config.dart';
import 'package:flutter_application_1/presentation/ui/ui.dart';

class WTextButton extends StatelessWidget {
  late Widget child;
  late VoidCallback onPressedButton;
  late ButtonStyle styleButton;
  static final CustomColors _colorsTheme = AppTheme().themeMode == 'light' ? CustomColors.light : CustomColors.dark;

  WTextButton({
    required String text,
    required VoidCallback onPressed,
    super.key
  }) {
    child = WText.custom(text,
      fontWeight: FontWeight.w500,
      color: _colorsTheme.link,
      fontSize: 15,
    );
    onPressedButton = onPressed;
  }
  
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0),
        splashFactory: NoSplash.splashFactory,
      ),
      onPressed: () {
        onPressedButton();
      },
      child: child,
    );
  }
}