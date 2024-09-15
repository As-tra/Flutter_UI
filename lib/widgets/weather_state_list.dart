import 'package:flutter/material.dart';
import 'package:weather_app/widgets/weather_state_item.dart';

class WeatherStateList extends StatelessWidget {
  const WeatherStateList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 12.0, left: index == 0 ? 20 : 0),
          child: const WeatherStateItem(),
        );
      },
    );
  }
}
