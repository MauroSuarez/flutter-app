import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/config.dart';
import 'package:flutter_application_1/presentation/ui/ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<CustomColors>();
    return WScaffold(
      appBar: AppBar(
        backgroundColor: theme?.background!,
        leading: IconButton(
          icon: (Icon(FontAwesomeIcons.chevronLeft, size: 14, color: theme?.grey0)),
          onPressed: () => Navigator.pop(context),
        ),
        toolbarHeight: 40,
        centerTitle: true,
        title: WText.labelSmall('Editar'),
        elevation: 0.0,
      ),
      Center(
        child: Text('Editar perfil')
      ),
    );
  }
}