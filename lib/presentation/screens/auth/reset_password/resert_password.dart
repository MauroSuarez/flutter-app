import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_1/presentation/ui/ui.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return WScaffold(
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: WText.titleMedium('Ingreser nuevo password'),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only( top: 0 ),
            child: WText.bodySmall('Lorem ipsum dolor sit amet'),
          ),
          const SizedBox(height: 80),
          _FieldsForgot(),
          const SizedBox(height: 20),
          _ButtonsReset(),
          const SizedBox(height: 80),
        ]
      ),
    );
  }
}

class _FieldsForgot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<CustomColors>();
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        // decoration: BoxDecoration(
        //   border: Border.all(color: Colors.red)
        // ),
        child: Column(
          children: <Widget>[
            WTextFormField(hintText: 'Constraseña', labelText: 'Contraseña', suffixIcon: Icon(FontAwesomeIcons.eyeSlash, size: 18, color: theme?.grey1!)),
            const SizedBox(height: 20),
            WTextFormField(hintText: 'Confirme contraseña', labelText: 'Confirme contraseña', suffixIcon: Icon(FontAwesomeIcons.eyeSlash, size: 18, color: theme?.grey1!)),
          ],
        ),
      ),
    );
  }
}

class _ButtonsReset extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context).extension<CustomColors>();
    return Container(
        width: double.infinity,
        // height: 100,
        // decoration: BoxDecoration(
        //   border: Border.all(color: Colors.purple)
        // ),
        child: WButton(onPressed: () {}, text: 'Guardar contraseña'),
    );
  }
}
