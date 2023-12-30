import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class MyCarouselExample extends StatefulWidget {
  const MyCarouselExample({super.key});

  @override
  State<MyCarouselExample> createState() => _MyCarouselExampleState();
}

class _MyCarouselExampleState extends State<MyCarouselExample> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel Example'),
      ),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         CarouselSlider(
           items: [
             Container(
               height: 200,
               color: Colors.red,
               child: const Center(child: Text('Page 1')),
             ),
             Container(
               height: 200,
               color: Colors.green,
               child: const Center(child: Text('Page 2')),
             ),
             Container(
               height: 200,
               color: Colors.blue,
               child: const Center(child: Text('Page 3')),
             ),
           ],
           options: CarouselOptions(
             height: 400.0,
             scrollDirection: Axis.horizontal,
             enlargeCenterPage: true,
             aspectRatio: 16 / 9,
             autoPlay: true,
             autoPlayCurve: Curves.fastOutSlowIn,
             enableInfiniteScroll: true,
             autoPlayAnimationDuration: const Duration(milliseconds: 800),
             viewportFraction: 0.8,
             onPageChanged: (index, reason) {
               setState(() {
                 _currentIndex = index;
               });
             },
           ),
         ),
         const SizedBox(height: 20),
         DotsIndicator(
           dotsCount: 3,
           position: _currentIndex.roundToDouble(),
           decorator: DotsDecorator(
             size: const Size(12.0, 12.0),
             activeSize: const Size(40.0, 12.0),
             color: Colors.grey[400]!,
             activeColor: Colors.greenAccent,
             spacing: const EdgeInsets.all(3.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0), 
              ),
             shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),           
             ),
           ),
         ),
       ],
     ),
    );
  }
}

