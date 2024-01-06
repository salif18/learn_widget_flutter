import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/graphique/linechart.dart';
import 'package:learn_flutter/widgets/graphique/piechart.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyLineCart(),
              MyPieChart()
            ],
          ),
        ),
      ),
    );
  }
}