import 'package:flutter/material.dart';
import 'package:weather_app/utils/styles.dart';

class MainWeatherInfo extends StatelessWidget {
  const MainWeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Montreal",
          style: Styles.textStyleRegular34,
        ),
        Text(
          "19°",
          style: Styles.textStyleThin96,
        ),
      ],
    );
  }
}
