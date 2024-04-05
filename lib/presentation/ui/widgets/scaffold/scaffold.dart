
import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/config.dart';

class WScaffold extends StatelessWidget {
  final Widget child;
  final AppBar? appBar;
  final Widget? bottomNavigationBar;
  final double? padding;
  final bool? isSafeArea;
  final bool? extendBodyBehindAppBar;

  const WScaffold(this.child, {super.key, this.appBar, this.padding = 15, this.extendBodyBehindAppBar = false, this.isSafeArea = true, this.bottomNavigationBar});

  const WScaffold.full(this.child, {super.key, this.appBar, this.padding = 0, this.extendBodyBehindAppBar = false, this.isSafeArea = false, this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<CustomColors>();
    return Scaffold(
      // resizeToAvoidBottomInset : false,
      extendBodyBehindAppBar: extendBodyBehindAppBar!,
      appBar: appBar,
      bottomNavigationBar: bottomNavigationBar,
      backgroundColor: theme?.background,
      body: isSafeArea! ? buildSafeArea() : buildPadding(),
    );
  }

  Widget buildSafeArea() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(padding!),
        child: child,
      ),
    );
  }

  Widget buildPadding() {
    return Padding(
      padding: EdgeInsets.all(padding!),
      child: child,
    );
  }
}