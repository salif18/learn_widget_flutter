import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


class MyLineCart extends StatelessWidget {
  const MyLineCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(top:100, left: 15, right: 15),
      child:Container(
        height: 500,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        alignment:Alignment.center ,
         
         child:LineChart(
          LineChartData(
            minX: 0, maxX: 10, minY: 0, maxY: 12, 
            titlesData: FlTitlesData(
              topTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
                axisNameWidget: Text('Statistique')
              ), 
              rightTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false), 
              ), 
              leftTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: true),
                axisNameWidget: Text("Somme")
              ), 
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: true),
                axisNameWidget: Text("Mois")
              )
            ), 
            lineBarsData: [
              LineChartBarData(
                isCurved: true, 
                barWidth: 3, 
                color:Colors.green,
                spots: [
                  FlSpot(0, 0), 
                  FlSpot(2, 3),
                  FlSpot(4, 2),
                  FlSpot(7, 5),
                  FlSpot(8, 3), 
                ]
              )
            ]
          )
         )
        )
    );
  }
}