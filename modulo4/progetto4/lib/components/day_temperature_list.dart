import 'package:flutter/material.dart';
import 'package:progetto4/models/day_forecast_model.dart';

import 'day_temperature.dart';

class DayTemperatureList extends StatelessWidget {
  final String title;
  final List<DayForecastModel> sevenDaysForecast;
  DayTemperatureList({
    required this.title,
    required this.sevenDaysForecast,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black54,
      ),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ),
            boxDivider(),
            Expanded(
              child: ListView.separated(
                itemCount: sevenDaysForecast.length,
                itemBuilder: (context, index) =>
                    DayTemperature(dayForecastModel: sevenDaysForecast[index]),
                separatorBuilder: (context, index) => boxDivider(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget boxDivider() => Container(
        width: double.infinity,
        height: 1,
        color: Colors.white10,
      );
}
