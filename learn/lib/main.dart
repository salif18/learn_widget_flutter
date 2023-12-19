import "package:flutter/material.dart";
import "package:learn_flutter/BottomTabNavigation/bottomNavigation.dart";
import "package:learn_flutter/auth/authentification.dart";
import 'package:learn_flutter/screens/galeries/galeries_mode_tabbarview.dart';
import "package:learn_flutter/drawer/drawer.dart";
import "package:learn_flutter/screens/home/home.dart";
import "package:learn_flutter/screens/search/search.dart";
// import 'package:firebase_core/firebase_core.dart';



void main()async{
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
  }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  void _selectIndex(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Demo",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: const MyDrawer(),
          body: [
            const MyHome(),
            const MySearch(),
            const MyPhotos(),
            const MyAuthentification(),
          ][_currentIndex],
          bottomNavigationBar: myBottomNavigationBarState(
              currentIndex: _currentIndex, selectIndex: _selectIndex),
        ));
  }
}
