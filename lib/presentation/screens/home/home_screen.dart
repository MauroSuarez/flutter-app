import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/config.dart';
import 'package:flutter_application_1/presentation/screens/screens.dart';
import 'package:flutter_application_1/presentation/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bottomSelectedIndex = 0;

  // List<BottomNavigationBarItem> buildBottomNavBarItems() {
  //   return [
  //     BottomNavigationBarItem(
  //         icon: Icon(Icons.home),
  //         label: 'Red'
  //     ),
  //     BottomNavigationBarItem(
  //       icon: Icon(Icons.search),
  //       label: 'Blue',
  //     ),
  //     BottomNavigationBarItem(
  //         icon: Icon(Icons.info_outline),
  //         label: 'Yellow'
  //     )
  //   ];
  // }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        MyHomeScreen(),
        SearchScreem(),
        AlertsScreen(),
        ProfileScreen()
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<CustomColors>();
    return Scaffold(
      body: buildPageView(),
      bottomNavigationBar: WBottomBar(
        backgroundColor: theme?.background,
        currentIndex: bottomSelectedIndex,
        onTap: (index) => bottomTapped(index),
        items: [
          /// Home
          WBottomBarItem(
            icon: Icon(FontAwesomeIcons.house, size: 18),
            title: Text("Inicio"),
            selectedColor: theme?.primary!,
            unselectedColor: theme?.black,
          ),

          /// Likes
          WBottomBarItem(
            icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 18),
            title: Text("Buscar"),
            selectedColor: theme?.primary!,
            unselectedColor: theme?.black,
          ),

          /// Search
          WBottomBarItem(
            icon: Icon(FontAwesomeIcons.bell, size: 18),
            title: Text("Alertas"),
            selectedColor: theme?.primary!,
            unselectedColor: theme?.black,
          ),

          /// Profile
          WBottomBarItem(
            icon: Icon(FontAwesomeIcons.user, size: 18),
            title: Text("Perfil"),
            selectedColor: theme?.primary!,
            unselectedColor: theme?.black,
          ),
        ],
      ),
    );
  }
}
