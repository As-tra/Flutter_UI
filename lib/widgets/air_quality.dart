import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/utils/styles.dart';
import 'package:weather_app/widgets/custom_container.dart';
import 'package:weather_app/widgets/custom_slider.dart';

class AirQuality extends StatelessWidget {
  const AirQuality({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.ac_unit,
                color: kGrey2,
              ),
              const SizedBox(width: 4),
              Text(
                "AIR QUALITY",
                style: Styles.textStyleSemiBold14.copyWith(
                  color: kGrey2,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            "3-Low Health Risk",
            style: Styles.textStyleMedium18,
          ),
          const Padding(
            padding: EdgeInsets.only(
              right: 5.0,
              top: 20,
              bottom: 20,
            ),
            child: CustomSlider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'See More',
                style: Styles.textStyleSemiBold14.copyWith(
                  fontWeight: FontWeight.normal,
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: kGrey2,
              ),
            ],
          )
        ],
      ),
    );
  }
}
