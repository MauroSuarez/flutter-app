import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_1/presentation/ui/ui.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({ Key? key }) : super(key: key);
  
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
        title: WText.labelSmall('Crear cuenta'),
        elevation: 0.0,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: WText.titleMedium('Bienvenido'),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only( top: 0 ),
            child: WText.bodySmall('Lorem ipsum dolor sit amet'),
          ),
          const SizedBox(height: 20),
          _FieldsSignUp(),
          const SizedBox(height: 20),
          _ButtonsSignUp(),
          const SizedBox(height: 20),
          _GoSignIn(),
        ]
      ),
    );
  }
}

class _FieldsSignUp extends StatelessWidget {
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
            WTextFormField(hintText: 'Ingrese un email', labelText: 'Email', suffixIcon: Icon(FontAwesomeIcons.envelope, size: 18, color: theme?.grey1!)),
            const SizedBox(height: 20),
            WTextFormField(hintText: '****', labelText: 'Contraseña', suffixIcon: Icon(FontAwesomeIcons.lock, size: 18, color: theme?.grey1!)),
            const SizedBox(height: 20),
            _TermsAndConditions(),
          ],
        ),
      ),
    );
  }
}

class _ButtonsSignUp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context).extension<CustomColors>();
    return Container(
        width: double.infinity,
        // height: 100,
        // decoration: BoxDecoration(
        //   border: Border.all(color: Colors.purple)
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            WButton(onPressed: () {}, text: 'Registrarse'),
            const SizedBox(height: 10),
            WButton.icon(
              onPressed: () {},
              text: 'Registrarse con google',
              leftIcon: true,
              icon: Icon(FontAwesomeIcons.google, color: theme?.searchBg, size: 15)),
              const SizedBox(height: 10),
          ]
        ),
    );
  }
}

class _GoSignIn extends StatelessWidget {
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
          WText.bodySmall('Ya tenes cuenta?'),
          WTextButton(onPressed: () => context.push('/signin'), text: 'volver.'),
        ]
      ),
    );
  }
}

class _TermsAndConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<CustomColors>();
    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      // decoration: BoxDecoration(
      //   border: Border.all(color: Colors.red)
      // ),
      child: Row(
        children: <Widget>[
          Transform.scale(
            scale: 1.2,
            child:  Checkbox(
              checkColor: Colors.white,
              activeColor: theme?.primary!,
              value: true,
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(100.0)),
                side: BorderSide(width: 2, color: (theme?.primary)!)
              ),//const CircleBorder(),
              onChanged: (bool? value) {},
            ),
          ),
          WText.bodySmall('Aceptar los '),
          WTextButton(text: 'Términos y condiciones.', onPressed: () {
            _showFullModal(context, theme);
          })
        ]
      )
    );
  }

  _showFullModal(context, theme) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false, // should dialog be dismissed when tapped outside
      barrierLabel: "Modal", // label for barrier
      transitionDuration: const Duration(milliseconds: 900), // how long it takes to popup dialog after button click
      pageBuilder: (_, __, ___) { // your widget implementation 
        return WScaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: theme?.background!,
            actions: <Widget>[
              IconButton(
                icon: (Icon(FontAwesomeIcons.xmark, size: 14, color: theme?.grey0)),
                onPressed: () => Navigator.pop(context),
              ),
            ],
            toolbarHeight: 40,
            centerTitle: true,
            title: WText.labelSmall('Términos y condiciones'),
            elevation: 0.0
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  text:"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
                  style: WText.styleLabelTextField,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }

  _showBottomModal(context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (builder) {
        return new Container(
          height: 800,
          color: Colors.transparent,
          child: new Container(
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(10.0),
                topRight: const Radius.circular(10.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0, // has the effect of softening the shadow
                  spreadRadius: 0.0, // has the effect of extending the shadow
                )
              ],
            ),
            alignment: Alignment.topLeft,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 10),
                      child: Text(
                        "Bottom Modal",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Colors.black87),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, right: 5),
                      child: Text(
                          "Save",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff999999),
                          ),
                        ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: const Color(0xfff8f8f8),
                        width: 1,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text:"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black,
                            wordSpacing: 1
                          )
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      });
  }
}