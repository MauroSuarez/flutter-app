
import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/ui/ui.dart';

import 'slide.dart';

class SlideTwo extends StatelessWidget {
  const SlideTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Expanded(
            child: Slide('assets/slide_two.svg')
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only( top: 20 ),
            child: WText.titleExtraLarge('Crea tu cuenta y disfruta'),
          ),
          Container(
            width: 300,
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only( top: 0 ),
            child: WText.bodySmall('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.'),
          ),
        ]
      ),
    );
  }
}