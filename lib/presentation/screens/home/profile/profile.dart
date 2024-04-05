import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/config/config.dart';
import 'package:flutter_application_1/presentation/ui/ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'ui/data.dart';

class ProfileScreen extends ConsumerStatefulWidget { 
  ProfileScreen({super.key});

  @override
  _Profile createState() => _Profile();
}

class _Profile extends ConsumerState<ProfileScreen> {
  bool _visible = true;
  final singleScrollController = PageController();

  @override
  void initState() {
    super.initState();
    // singleScrollController.addListener(() {
    //   if(singleScrollController.position.pixels > 4)
    //     _visible = false;
    //   else
    //     _visible = true;
      
    //   setState(() {});
    //   print(singleScrollController.position.pixels);
    // });
  }

  @override
  void dispose() {
    singleScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = ref.watch(themeProvider);
    double topHeightPadding = MediaQuery.of(context).padding.top;
    double heightForStack = (MediaQuery.of(context).size.height - 90);
    final theme = Theme.of(context).extension<CustomColors>();
    return WScaffold.full(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 40,
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget> [
          IconButton(
            icon: const Icon(FontAwesomeIcons.ellipsisVertical, size: 20, color: Colors.white),
            onPressed: () => context.push('/edit-profile'),
          )
          // PopupMenuButton<String>(
          //   onSelected: (option) => {},
          //   icon: const Icon(FontAwesomeIcons.ellipsisVertical, size: 20, color: Colors.white),
          //   itemBuilder: (BuildContext context) {
          //     return {'Cerrar sesión', 'Editar'}.map((String choice) {
          //       return PopupMenuItem<String>(
          //         value: choice,
          //         child: WText.bodySmall(choice),
          //         onTap: () => context.push('/edit-profile'),
          //       );
          //     }).toList();
          //   },
          // ),
        ]
      ),
      Stack(
        fit : StackFit.expand,
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: topHeightPadding + 120,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://ecosistemas.ovacen.com/wp-content/uploads/2018/01/bosque.jpg'), // AssetImage("assets/images/bulb.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: topHeightPadding + 140,
            left: 0.1,
            right: 0.1,
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: heightForStack,
              decoration: BoxDecoration(
                color: theme?.background!,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35)),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Center( 
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: MediaQuery.of(context).size.width,
                      height: 115,
                      child: WText.bodyMedium('Mauro Suarez'),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: MediaQuery.of(context).size.width,
                      height: 20,
                      child: WText.bodySmall('@maurito10'),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.only(top: 0, bottom: 0, left: 25, right: 25),
                      height: 100,
                      child: SizedBox(
                        // alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        child: const WData(),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        controller: singleScrollController,
                        child: Container(
                          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 25),
                          width: MediaQuery.of(context).size.width,
                          // decoration: BoxDecoration(
                          //   border: Border.all(color: Colors.red)
                          // ),
                          child: Column(
                            children: <Widget>[
                              const SizedBox(height: 10),
                              WCardOption(
                                onTap: () {
                                  ref.read(themeProvider.notifier).update((state) => !isDarkMode);
                                },
                                title: 'Cambiar tema',
                                icon: !isDarkMode ? FontAwesomeIcons.moon : FontAwesomeIcons.sun,
                              ),
                              const SizedBox(height: 10),
                              WCardOption(
                                title: 'Cuenta',
                                onTap: () {},
                              ),
                              const SizedBox(height: 10),
                              WCardOption(
                                title: 'test',
                                onTap: () {},
                              ),
                              const SizedBox(height: 20),
                              Center(
                                child: WText.bodySmall('Versión: 2.0.0'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ),
          Positioned(
            top: topHeightPadding + 90,
            child: SizedBox(
              width: 120,
              height: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: CircleAvatar(child: WText.titleMedium('D'))),
                  //child: const Image(image: AssetImage(tProfileImage))),
            ),
          ),
        ],
      ),
    );
  }
}
