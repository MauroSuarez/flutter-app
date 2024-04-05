import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/config.dart';
// import 'package:flutter_application_1/presentation/providers/providers.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_1/presentation/ui/ui.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return WScaffold(
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: WText.titleMedium('Inicia sesión'),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only( top: 0 ),
            child: WText.bodySmall('Lorem ipsum dolor sit amet'),
          ),
          const SizedBox(height: 40),
          _FieldsSigIn(),
          const SizedBox(height: 20),
          _ButtonsSignIn(),
          const SizedBox(height: 20),
          _GoSignUp(),
        ]
      ),
    );
  }
}

class _FieldsSigIn extends StatelessWidget {
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
            WTextFormField(hintText: 'Ingrese el usuario', labelText: 'Usuario', suffixIcon: Icon(FontAwesomeIcons.user, size: 18, color: theme?.grey1!)),
            const SizedBox(height: 20),
            WTextFormField(hintText: '****', labelText: 'Contraseña', suffixIcon: Icon(FontAwesomeIcons.lock, size: 18, color: theme?.grey1!)),
            const SizedBox(height: 20),
            _GoForgotPassword(),
          ],
        ),
      ),
    );
  }
}

class _ButtonsSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final isDarkMode = ref.watch(themeProvider);
    final theme = Theme.of(context).extension<CustomColors>();
    return Expanded(
      child: Container(
        width: double.infinity,
        height: 150,
        // decoration: BoxDecoration(
        //   border: Border.all(color: Colors.purple)
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            WButton(onPressed: () => context.push('/home'), text: 'Iniciar sesión'),
            const SizedBox(height: 10),
            WButton.icon(
              onPressed: () {},
              text: 'Iniciar con google',
              leftIcon: true,
              icon: Icon(FontAwesomeIcons.google, color: theme?.searchBg, size: 15)),
              // const SizedBox(height: 10),
              // WButton.icon(onPressed: () {
              //   ref.read(themeProvider.notifier).update((state) => !isDarkMode);
              // }, text: 'Cambiar Tema',
              // leftIcon: true,
              // icon: Icon(!isDarkMode ? FontAwesomeIcons.moon : FontAwesomeIcons.sun, color: theme?.searchBg, size: 15)
              // ),
          ]
        ),
      ),
    );
  }
}

class _GoSignUp extends StatelessWidget {
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
          WText.bodySmall('No tenes cuenta? '),
          WTextButton(onPressed: () => context.push('/signup'), text: 'Crear una.'),
        ]
      ),
    );
  }
}

class _GoForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      // decoration: BoxDecoration(
      //   border: Border.all(color: Colors.red)
      // ),
      child: WTextButton(onPressed: () => context.push('/forgot-password'), text: 'Olvidaste tu contraseña?'),
    );
  }
}