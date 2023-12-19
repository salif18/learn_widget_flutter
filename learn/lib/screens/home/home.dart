import 'package:flutter/material.dart';
import 'package:learn_flutter/appbar/myappbar.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body:SingleChildScrollView(
        child:Column(
          children: [ 

          ],
        )
      ),
    );
  }
}