import 'package:flutter/material.dart';
import 'package:progetto4/models/day_forecast_model.dart';

class DayTemperature extends StatelessWidget {
  final DayForecastModel dayForecastModel;
  DayTemperature({required this.dayForecastModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        dayForecastModel.name,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
      trailing: Text(
        "${dayForecastModel.temperature}",
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
      ),
    );
  }
}
