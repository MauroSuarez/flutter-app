import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_1/presentation/ui/ui.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<CustomColors>();
    return WScaffold(
      appBar: AppBar(
        backgroundColor: theme?.background!,
        leading: IconButton(
          icon: (Icon(FontAwesomeIcons.chevronLeft, size: 14, color: theme?.grey0)),
          onPressed: () => context.push('/signin'),
        ),
        toolbarHeight: 40,
        centerTitle: true,
        title: WText.labelSmall(''),
        elevation: 0.0,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: WText.titleMedium('Recuperar contraseña'),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only( top: 0 ),
            child: WText.bodySmall('Lorem ipsum dolor sit amet'),
          ),
          const SizedBox(height: 80),
          _FieldsForgot(),
          const SizedBox(height: 20),
          _ButtonsForgot(),
          const SizedBox(height: 20),
          _Resend(),
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
      child: Container(
        width: double.infinity,
        // decoration: BoxDecoration(
        //   border: Border.all(color: Colors.red)
        // ),
        child: Column(
          children: <Widget>[
            WTextFormField(hintText: 'Ingrese un email', labelText: 'Email', suffixIcon: Icon(FontAwesomeIcons.envelope, size: 18, color: theme?.grey1!)),
          ],
        ),
      ),
    );
  }
}

class _ButtonsForgot extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context).extension<CustomColors>();
    return Container(
        width: double.infinity,
        // height: 100,
        // decoration: BoxDecoration(
        //   border: Border.all(color: Colors.purple)
        // ),
        child: WButton(onPressed: () {}, text: 'Enviar link'),
    );
  }
}

class _Resend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      width: double.infinity,
      // decoration: BoxDecoration(
      //   border: Border.all(color: Colors.red)
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          WText.bodySmall('No llegó? '),
          WTextButton(onPressed: () {}, text: 'volver a enviar.'),
        ]
      ),
    );
  }
}