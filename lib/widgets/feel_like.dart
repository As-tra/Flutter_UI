import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/utils/styles.dart';
import 'package:weather_app/widgets/custom_container.dart';

class FeelLike extends StatelessWidget {
  const FeelLike({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.thermostat,
                color: kGrey2,
              ),
              const SizedBox(width: 4),
              Text(
                "FEELS LIKE",
                style: Styles.textStyleSemiBold14.copyWith(
                  color: kGrey2,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text("19°", style: Styles.textStyleRegular34),
          ),
          const Spacer(),
          const Text(
            "Similar to the actual temperature.",
            style: Styles.textStyleRegular14,
          ),
        ],
      ),
    );
  }
}
