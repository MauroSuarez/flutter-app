import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/config.dart';
import 'package:flutter_application_1/presentation/ui/ui.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WAppBar extends StatelessWidget implements PreferredSizeWidget {
  static final CustomColors _colorsTheme = AppTheme().themeMode == 'light' ? CustomColors.light : CustomColors.dark;
  final bool? automaticallyImplyLeadingAppBar;
  final double? elevationAppBar;
  final double? toolbarHeightAppBar;
  final bool? centerTitleAppBar;
  final String? titleAppBar;
  final IconButton? leadingAppBar;
  final Color? backgroundColorAppBar;
  final Widget? flexibleSpaceAppBar;

  const WAppBar({
    Key? key,
    this.automaticallyImplyLeadingAppBar,
    this.backgroundColorAppBar,
    this.centerTitleAppBar,
    this.elevationAppBar,
    this.flexibleSpaceAppBar,
    this.leadingAppBar,
    this.titleAppBar,
    this.toolbarHeightAppBar,
  }) : super(key: key);

  factory WAppBar.custom({
    bool? automaticallymplyLeading = false,
    double? elevation = 0.0,
    double? toolbarHeight = 40,
    bool? centerTitle = true,
    String? title = '',
    IconButton? leading,
    Color? backgroundColor,
    Widget? flexibleSpace
  }) {
    return WAppBar(
      automaticallyImplyLeadingAppBar: automaticallymplyLeading,
      elevationAppBar: elevation,
      toolbarHeightAppBar: toolbarHeight,
      centerTitleAppBar: centerTitle,
      titleAppBar: title,
      leadingAppBar: leading,
      backgroundColorAppBar: backgroundColor ?? _colorsTheme.background!,
      flexibleSpaceAppBar: flexibleSpace
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: automaticallyImplyLeadingAppBar!,
      leading: leadingAppBar,
      backgroundColor: backgroundColorAppBar,
      elevation: elevationAppBar,
      centerTitle: centerTitleAppBar,
      toolbarHeight: toolbarHeightAppBar,
      title: WText.labelSmall(titleAppBar),
      flexibleSpace: flexibleSpaceAppBar,
    );
  }
}
