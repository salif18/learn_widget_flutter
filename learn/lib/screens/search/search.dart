import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/search/searchfield.dart';

class MySearch extends StatefulWidget {
  const MySearch({super.key});

  @override
  State<MySearch> createState() => _MySearchState();
}

class _MySearchState extends State<MySearch> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [ 
            SearchField(),
          ],
        ),
      ),
    );
  }
}