import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/utils/styles.dart';
import 'package:weather_app/widgets/custom_compass.dart';
import 'package:weather_app/widgets/custom_container.dart';

class Customwind extends StatelessWidget {
  const Customwind({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.air,
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
          const Expanded(
            child: CustomCompass(),
          ),
        ],
      ),
    );
  }
}

