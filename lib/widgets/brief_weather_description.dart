import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/utils/styles.dart';

class BriefWeatherDescription extends StatelessWidget {
  const BriefWeatherDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Montreal",
                style: Styles.textStyleRegular34,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "19°|Mostly Clear",
                style: Styles.textStyleMedium20.copyWith(
                  color: kGrey2,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
