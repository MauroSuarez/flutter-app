
import 'package:flutter/material.dart';
// import 'package:flutter_application_1/presentation/providers/providers.dart';
import 'package:flutter_application_1/presentation/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'slide.dart';

class SlideOne extends ConsumerWidget {
  const SlideOne({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final isDarkMode = ref.watch(themeProvider);
    return SizedBox(
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Expanded(
            child: Slide('assets/slide_one.svg')
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only( top: 20 ),
            child: WText.titleExtraLarge('Rápido fácil y seguro'),
          ),
          Container(
            width: 300,
            // decoration: BoxDecoration(
            //   border: Border.all(color: Colors.red)
            // ),
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only( top: 0 ),
            child: WText.bodySmall('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.'),
          ),
          // SizedBox(height: 50),
          // WButton(onPressed: () {
          //   ref.read(themeProvider.notifier).update((state) => !isDarkMode);
          // }, text: 'Cambiar Tema'),
        ]
      ),
    );
  }
}