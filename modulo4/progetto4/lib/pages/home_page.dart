import 'package:flutter/material.dart';
import 'package:progetto4/components/city_weather.dart';
import 'package:progetto4/models/city_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: weatherData.length,
        itemBuilder: (context, index) =>
            CityWeather(cityModel: weatherData[index]),
      ),
    );
  }
}
