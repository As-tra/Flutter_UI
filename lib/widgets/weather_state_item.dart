import 'package:flutter/material.dart';
import 'package:weather_app/utils/assets.dart';
import 'package:weather_app/utils/styles.dart';

class WeatherStateItem extends StatelessWidget {
  const WeatherStateItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xff48319D).withOpacity(.5),
        border: Border.all(
          color: Colors.white.withOpacity(0.2),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(.25),
            offset: const Offset(1, 1),
            blurStyle: BlurStyle.inner,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(.25),
            offset: const Offset(5, 4),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        children: [
          const Text(
            "12 AM",
            style: Styles.textStyleSemiBold14,
          ),
          const SizedBox(height: 16),
          Image.asset(Assets.iconsMoonCloudFastWind),
          const SizedBox(height: 16),
          Text(
            "19°",
            style: Styles.textStyleMedium20.copyWith(
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
