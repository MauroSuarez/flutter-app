
import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/ui/ui.dart';

import 'slide.dart';

class SlideThree extends StatelessWidget {
  const SlideThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Expanded(
            child: Slide('assets/slide_three.svg')
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only( top: 20 ),
            child: WText.titleExtraLarge('Registrate o inicia sesión'),
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