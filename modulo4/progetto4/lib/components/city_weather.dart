import 'package:flutter/material.dart';
import 'package:progetto4/components/day_temperature_list.dart';
import 'package:progetto4/models/city_model.dart';

class CityWeather extends StatelessWidget {
  final CityModel cityModel;
  CityWeather({required this.cityModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroundImage(),
        body(),
      ],
    );
  }

  Widget backgroundImage() => Positioned(
        top: 0,
        left: 0,
        right: 0,
        bottom: 0,
        child: Image.network(
          cityModel.backgroundImageUrl,
          fit: BoxFit.cover,
          color: Colors.black.withOpacity(0.1),
          colorBlendMode: BlendMode.darken,
        ),
      );

  Widget body() => SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cityModel.name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "${cityModel.temperature} °C",
                style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 200.0,
              ),
              Expanded(
                child: DayTemperatureList(
                    title: "7-DAY FORECAST",
                    sevenDaysForecast: cityModel.sevenDaysForecast),
              ),
            ],
          ),
        ),
      );
}
