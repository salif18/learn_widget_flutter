import 'dart:async';

import 'package:flutter/material.dart';

class EaseAnimation extends StatefulWidget {
  final int delay;
  final Widget child;
  const EaseAnimation({super.key, required this.delay, required this.child});

  @override
  State<EaseAnimation> createState() => _EaseAnimationState();
}

class _EaseAnimationState extends State<EaseAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation <Offset> _animOffset;

  @override
  void initState(){
    super.initState();
    _controller = AnimationController(vsync: this , duration: const Duration(milliseconds: 800));
    
    final curve = CurvedAnimation(
      curve: Curves.bounceInOut,
      parent:_controller
    );

    _animOffset = Tween<Offset>(
      begin:const Offset(0, -1.8),
      end:Offset.zero
    ).animate(curve);

    Timer(Duration(milliseconds: widget.delay), () { 
      _controller.forward();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller, 
      child:SlideTransition(
        position: _animOffset,
        child:widget.child
        )
    );
  }
}