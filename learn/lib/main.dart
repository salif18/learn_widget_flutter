import "package:flutter/material.dart";
import 'package:learn_flutter/screens/statistiques/stats.dart';
import 'package:learn_flutter/widgets/BottomTabNavigation/bottomNavigation.dart';
import 'package:learn_flutter/screens/galeries/galeries_mode_tabbarview.dart';
import 'package:learn_flutter/screens/carousels/caroussel.dart';
import 'package:learn_flutter/widgets/drawer/drawer.dart';
import "package:learn_flutter/screens/home/home.dart";
import "package:learn_flutter/screens/search/search.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<ScaffoldState> _keydrawer = GlobalKey<ScaffoldState>();

  int _currentIndex = 0;

  void _selectIndex(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "sCloud Driver",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          key: _keydrawer,
          drawer: const MyDrawer(),
          body: [
            MyHome(keydrawer: _keydrawer),
            const Statistics(),
            const MySearch(),
            const MyPhotos(),
            const MyCarouselExample()
          ][_currentIndex],
          bottomNavigationBar: MyBottomNavigationBarState(
              currentIndex: _currentIndex, selectIndex: _selectIndex),
        ));
  }
}
