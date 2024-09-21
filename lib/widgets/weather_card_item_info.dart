import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/utils/styles.dart';

class WeatherCardItemInfo extends StatelessWidget {
  const WeatherCardItemInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "19°",
            style: Styles.textStyleRegular75,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "H:24°",
                style: Styles.textStyleRegular14.copyWith(
                  color: kGrey2,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                "M:18°",
                style: Styles.textStyleRegular14.copyWith(
                  color: kGrey2,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Montreal, Canada",
                style: Styles.textStyleMedium18.copyWith(
                  fontWeight: FontWeight.normal,
                  color: kGrey1,
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                "Mid Rain",
                style: Styles.textStyleRegular14,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
