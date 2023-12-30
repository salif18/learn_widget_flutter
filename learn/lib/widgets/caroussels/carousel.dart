import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCarousel extends StatefulWidget {
  const MyCarousel({super.key});

  @override
  State<MyCarousel> createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: [
            Image.asset('assets/images/log1.jpg', fit: BoxFit.cover),
            Image.asset('assets/images/log2.jpg', fit: BoxFit.cover),
            Image.asset('assets/images/log3.jpg', fit: BoxFit.cover),
          ],
          options: CarouselOptions(
            height: 210.0,
            enlargeCenterPage: true,
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
        const SizedBox(height: 15,),
        DotsIndicator(
          dotsCount: 3,
          position: _currentIndex.toDouble(),
          decorator: DotsDecorator(
            size: const Size(12.0, 12.0),
            activeSize: const Size(40.0, 12.0),
            color: Colors.grey[400]!,
            activeColor: Colors.blue,
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
    );
  }
}
