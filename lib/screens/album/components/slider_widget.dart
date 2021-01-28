import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override

  double _currentSliderValue = 1;


  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Slider(
        value: _currentSliderValue,
        min: 0,
        max: 100,
        activeColor: Colors.green[900],
        inactiveColor: Colors.white60,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
      ),
    );
  }}
