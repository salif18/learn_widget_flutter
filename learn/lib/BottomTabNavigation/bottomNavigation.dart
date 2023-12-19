// ignore: file_names
import 'package:flutter/material.dart';

Widget myBottomNavigationBarState({currentIndex, selectIndex}) {
  return BottomNavigationBar(
    selectedItemColor: Colors.green,
    unselectedItemColor: Colors.grey,
    type: BottomNavigationBarType.fixed,
    onTap: (index) => selectIndex(index),
    currentIndex: currentIndex,
    items: const [
      BottomNavigationBarItem(icon: Icon(Icons.dashboard_customize_outlined, size:33), label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.search, size:33), label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.photo_library_outlined,size:33),label:""),
      BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined, size:33), label: ''),
    ],
  );
}
