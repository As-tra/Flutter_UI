import 'package:flutter/material.dart';
import 'package:weather_app/widgets/air_quality.dart';
import 'package:weather_app/widgets/custom_wind.dart';
import 'package:weather_app/widgets/moderate.dart';
import 'package:weather_app/widgets/sun_rise.dart';

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
          SizedBox(height: 10),
          SizedBox(
            height: 210,
            child: Row(
              children: [
                Expanded(child: Moderate()),
                SizedBox(width: 14),
                Expanded(child: SunRise()),
              ],
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 210,
            child: Row(
              children: [
                Expanded(child: Customwind()),
                SizedBox(width: 14),
                Expanded(child: SunRise()),
              ],
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 210,
            child: Row(
              children: [
                Expanded(child: Moderate()),
                SizedBox(width: 14),
                Expanded(child: SunRise()),
              ],
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 210,
            child: Row(
              children: [
                Expanded(child: Moderate()),
                SizedBox(width: 14),
                Expanded(child: SunRise()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
