import 'package:flutter/material.dart';
import 'package:weather_app/widgets/air_quality.dart';

class WeatherAllDetails extends StatelessWidget {
  const WeatherAllDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          
          colors: [
            Color(0xff45278B),
            Color(0xff2E335A),
          ],
        ),
      ),
      child: const Column(
        children: [
          AirQuality(),
        ],
      ),
    );
  }
}
