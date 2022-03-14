import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body(),
      ),
    );
  }

  Widget body() => Slider(
        min: 0,
        max: 100,
        divisions: 100,
        label: sliderValue.toStringAsFixed(0),
        value: sliderValue,
        onChanged: (value) => setState(
          () {
            sliderValue = value;
            print("Value :$sliderValue");
          },
        ),
      );
}
