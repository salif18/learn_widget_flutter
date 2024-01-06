// ignore: file_names
import 'package:flutter/material.dart';
class MyBottomNavigationBarState extends StatelessWidget {
  const MyBottomNavigationBarState({super.key,required this.currentIndex, required this.selectIndex});

  final currentIndex;
  final selectIndex;

  @override
 Widget build(BuildContext context){
  return ClipRRect(
    borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      onTap: (index) => selectIndex(index),
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_customize_outlined, size: 33),
            label: ''),
        BottomNavigationBarItem(
          icon:Icon(Icons.graphic_eq, size: 33,), label:""
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, size: 33), label: '',
          ),
        BottomNavigationBarItem(
            icon: Icon(Icons.photo_library_outlined, size: 33), label: ""),
             BottomNavigationBarItem(
            icon: Icon(Icons.view_carousel, size: 33), label: ""),
      ],
    ),
  );
}
}