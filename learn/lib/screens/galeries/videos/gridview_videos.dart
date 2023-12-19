import 'package:flutter/material.dart';

class GridViewVideos extends StatelessWidget {
  const GridViewVideos({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, 
        crossAxisSpacing: 1, 
        mainAxisSpacing: 1
        ), 
      itemCount: 5,
      itemBuilder: (BuildContext context , int index){
        return  Container();
      }
      );
  }
}