import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Slides extends ConsumerStatefulWidget {
  List<Widget> slides = [];
  final Function onSlideChange;
  
  Slides(this.slides, this.onSlideChange, {super.key});

  @override
  _SlidesState createState() => _SlidesState();
}

class _SlidesState extends ConsumerState<Slides> {

  final pageViewController = PageController();

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() => widget.onSlideChange(pageViewController.page!));
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageViewController,
      children: [
        ...widget.slides.map((element) {
            return element;
          }).toList()
      ],
    );
  }
}