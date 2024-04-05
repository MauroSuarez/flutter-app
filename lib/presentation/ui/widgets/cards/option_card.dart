import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/config.dart';
import 'package:flutter_application_1/presentation/ui/ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WCardOption extends StatelessWidget {
  static final CustomColors _colorsTheme = AppTheme().themeMode == 'light' ? CustomColors.light : CustomColors.dark;
  final Function? onTap;
  final IconData? icon;
  final String? title;
  final String? subtitle;
  final Widget? trailing;
  final double? radius;
  final Widget? leading;

  const WCardOption({
    this.onTap,
    this.icon,
    this.title,
    this.subtitle = '',
    this.radius = 20,
    this.trailing,
    this.leading,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      splashColor: _colorsTheme.primary,
      child: Container(
        padding: const EdgeInsets.only(top: 4, bottom: 4),
        decoration: BoxDecoration(
          color: _colorsTheme.grey5,
          borderRadius: BorderRadius.all(Radius.circular(radius!)),
        ),
        child: ListTile(
          title: WText.bodyMedium(title, color: _colorsTheme.searchBg),
          leading: leading,
          trailing: trailing ?? Icon(icon ?? FontAwesomeIcons.chevronRight, color: _colorsTheme.grey4, size: 18),
          subtitle: subtitle != '' ? WText.bodySmall(subtitle, color: _colorsTheme.black) : null,
        ),
      ),
    );
  }
}