import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/utils/styles.dart';

class MainWeatherInfo extends StatelessWidget {
  const MainWeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Montreal",
          style: Styles.textStyleRegular34,
        ),
        const Text(
          "19°",
          style: Styles.textStyleThin96,
        ),
        Text(
          "Mostly Clear",
          style: Styles.textStyleMedium20.copyWith(
            color: kSecondary,
          ),
        ),
        const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "H:24°",
              style: Styles.textStyleMedium20,
            ),
            SizedBox(width: 8),
            Text(
              "M:18°",
              style: Styles.textStyleMedium20,
            ),
          ],
        )
      ],
    );
  }
}
