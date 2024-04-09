import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/config.dart';
import 'package:flutter_application_1/presentation/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WTextFieldSearch extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final Icon? suffixIcon;
  // final TextEditingController controller;
  static final CustomColors _colorsTheme = AppTheme().themeMode == 'light' ? CustomColors.light : CustomColors.dark;

  const WTextFieldSearch({
    this.labelText,
    this.hintText = 'Buscar...',
    this.suffixIcon,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
          if (labelText != null) ...[
            Container(
              padding: const EdgeInsets.only(left: 5),
              margin: const EdgeInsets.only(bottom: 6),
              child: WText.labelSmall(labelText!),
            )
          ],
          TextField(
            decoration: InputDecoration(
              labelStyle: WText.styleLabelTextField,
              hintText: hintText,
              hintStyle: WText.styleHintTextField,
              contentPadding: const EdgeInsets.fromLTRB( 20, 8, 8, 8),
              isDense: false,
              suffixIcon: suffixIcon ?? Icon(FontAwesomeIcons.magnifyingGlass, size: 15, color: _colorsTheme.searchBg),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2, color:  _colorsTheme.grey5!
                ),
                borderRadius: BorderRadius.circular(50.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: _colorsTheme.primary!),
                borderRadius: BorderRadius.circular(50.0),
              ),
          ),
          style: WText.styleLabelTextField,
        ),
      ],
    );
  }
}