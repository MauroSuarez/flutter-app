import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_application_1/config/config.dart';
import 'package:flutter_application_1/presentation/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<CustomColors>();
    return WScaffold(
      appBar: AppBar(
        title: WText.labelSmall('En casa'),
        backgroundColor: Colors.transparent,
        toolbarHeight: 40,
        centerTitle: true,
        elevation: 0.0,
      ),
      Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 50,
            margin: const EdgeInsets.only(bottom: 20, top: 10),
            // decoration: BoxDecoration(
            //   border: Border.all(color: Colors.red)
            // ),
            child: const Center(child: WTextFieldSearch()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(FontAwesomeIcons.sliders, size: 20, color: theme?.primary),
                onPressed: () {},
              ),
              // const SizedBox(width: 5),
              const Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WChips(label: 'Casa',icon: FontAwesomeIcons.house, isSelected: true),
                      WChips(label: 'Bicicletas',icon: FontAwesomeIcons.bicycle),
                      WChips(label: 'Cajas',icon: FontAwesomeIcons.cubes, isSelected: true,),
                      WChips(label: 'autos',icon: FontAwesomeIcons.car),
                      WChips(label: 'Celulares',icon: FontAwesomeIcons.mobile),
                      WChips(label: 'Mascotas',icon: FontAwesomeIcons.paw),
                      WChips(label: 'Juguetes',icon: FontAwesomeIcons.rocket),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Container(
          //   width:  MediaQuery.of(context).size.width,
          //   height: MediaQuery.of(context).size.height,
          //   child: SingleChildScrollView(
          //     scrollDirection: Axis.vertical,
          //     child: StaggeredGridView.countBuilder(
          //       crossAxisCount: 4,
          //       itemCount: 8,
          //       itemBuilder: (BuildContext context, int index) => Container(
          //         color: Colors.green,
          //         child: Center(
          //           child: CircleAvatar(
          //             backgroundColor: Colors.white,
          //             child: Text('$index'),
          //           )
          //         ),
          //       ),
          //       staggeredTileBuilder: (int index) => StaggeredTile.count(2, index.isEven ? 2 : 1),
          //       mainAxisSpacing: 4.0,
          //       crossAxisSpacing: 4.0,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
