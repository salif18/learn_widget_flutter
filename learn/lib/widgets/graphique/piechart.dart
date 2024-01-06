import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyPieChart extends StatelessWidget {
  const MyPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(15), 
      child: Container(
        height: 500, 
        child: PieChart(
          PieChartData(
            centerSpaceColor: Colors.amber,
            sections: [
            PieChartSectionData(
                 value: 40, 
                 radius: 40, 
                 color: const Color.fromARGB(255, 28, 216, 34), 
                 title: "Naissance"
            ),
             PieChartSectionData(
                 value: 10, 
                 radius: 40, 
                 showTitle: true,
                 color: const Color.fromARGB(255, 24, 110, 180), 
                 title: "mortalite", 
              
            ), 
            //  PieChartSectionData(
            //      value: 30, 
            //      radius: 40, 
            //      color: const Color.fromARGB(255, 209, 42, 30), 
            //      title: "Naissance"
            // )
            ]
          )
        ),
      ),
    );
  }
}