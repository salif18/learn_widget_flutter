import "package:flutter/material.dart";


class SliderWidget extends StatefulWidget{
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState()=> _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget>{

 double _currentSliderValue = 20;

changeSlider(value){
  setState(()=> _currentSliderValue = value);
}
  @override
  Widget build(BuildContext context){
    return Slider(
      value: _currentSliderValue,
      min: 0,
      max:100,
      activeColor: Colors.green[300],
      label: _currentSliderValue.round().toString(),
      onChanged: (value)=>changeSlider(value),
      );
  }
}