import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/utils/styles.dart';
import 'package:weather_app/widgets/custom_container.dart';
import 'package:weather_app/widgets/custom_slider.dart';

class Moderate extends StatelessWidget {
  const Moderate({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.sunny,
                color: kGrey2,
              ),
              const SizedBox(width: 4),
              Text(
                "UV INDEX",
                style: Styles.textStyleSemiBold14.copyWith(
                  color: kGrey2,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            "4",
            style: Styles.textStyleRegular34,
          ),
          const Text(
            "Moderate",
            style: Styles.textStyleMedium20,
          ),
          const SizedBox(height: 16),
          const CustomSlider(),
        ],
      ),
    );
  }
}
