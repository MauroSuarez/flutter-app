import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/config.dart';

class Dots extends StatelessWidget {
  final double indexActive;
  List<int>? dotsQuantity;
  int index = 0;
  
  Dots(this.indexActive, {super.key, required int quantity} ) {
    dotsQuantity = List<int>.generate(quantity, (i) => i);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...dotsQuantity!.asMap().entries.map((entry) {
            int idx = entry.key;
            return _Dot(idx, indexActive);
          }).toList()
      ],
    );
  }
}

class _Dot extends StatelessWidget {
  final int index;
  final double indexActive;

  const _Dot(this.index, this.indexActive);

  @override
  Widget build(BuildContext context) {
    double width = ( indexActive >= index - 0.5 && indexActive < index + 0.5 ) ? 30 : 14;
    final theme = Theme.of(context).extension<CustomColors>();
    return AnimatedContainer(
      duration: const Duration( milliseconds: 200 ),
      width: width,
      height: 14,
      margin: const EdgeInsets.symmetric( horizontal: 5 ),
      decoration: BoxDecoration(
        color: ( indexActive >= index - 0.5 && indexActive < index + 0.5 ) ? theme?.primary : theme?.grey4,
        borderRadius: const BorderRadius.all(Radius.circular(100)),
        // shape: BoxShape.circle,
        // border: Border.all(color: Colors.grey.shade200.withOpacity(0.5), width: indexActive == index ? 3 : 0)
      ),
    );
  }
}