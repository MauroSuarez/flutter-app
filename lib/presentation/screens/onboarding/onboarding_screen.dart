import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/presentation/widgets/widgets.dart';
import 'package:go_router/go_router.dart';
import 'widgets/slide_one.dart';
import 'widgets/slide_three.dart';
import 'widgets/slide_two.dart';

class OnBoardingScreen extends ConsumerWidget {
  OnBoardingScreen({super.key});

  final List<Widget> arrSlides = [
                const SlideOne(),
                const SlideTwo(),
                const SlideThree(),
              ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void onChangeSlider(page) {
      ref.read(slidesProvider.notifier).state = page;
    }
    return WScaffold(
      Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Slides(arrSlides, onChangeSlider)
            ),
            _Dots(arrSlides.length)
          ]
        ),
      ),
    );
  }
}

class _Dots extends ConsumerWidget {
  final int quantity;

  const _Dots(this.quantity);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPage = ref.watch(slidesProvider);
    return SizedBox(
      width: double.infinity,
      height: 180,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Dots(currentPage, quantity: quantity),
          ),
          AnimatedContainer(
            duration: const Duration( milliseconds: 100 ),
            height: currentPage == quantity -1 ? 50 : 0,
            width: double.infinity,
            margin: const EdgeInsets.only( bottom: 10, top: 0 ),
            child: WButton(onPressed: () => context.replace('/signin'), text: 'ingresar'.toUpperCase()),
          )
        ],
      ),
    );
  }
}
