import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/config.dart';
import 'package:flutter_application_1/presentation/ui/ui.dart';

class WData extends StatelessWidget {
  const WData({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<CustomColors>();
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              WText.bodySmall('Traveler'),
              WText.custom('23', fontWeight: FontWeight.bold, fontSize: 16, color: theme?.black)
            ]
          ),
          const SizedBox(
            height: 25,
            child: VerticalDivider(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              WText.bodySmall('Viajes'),
              WText.custom('2K', fontWeight: FontWeight.bold, fontSize: 16, color: theme?.black)
            ]
          ),
          const SizedBox(
            height: 25,
            child: VerticalDivider(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              WText.bodySmall('Kms'),
              WText.custom('2323+', fontWeight: FontWeight.bold, fontSize: 16, color: theme?.black)
            ]
          ),
        ],
      );
  }
}