import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/utils/styles.dart';
import 'package:weather_app/widgets/custom_container.dart';

class RainFall extends StatelessWidget {
  const RainFall({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.water_drop_rounded,
                color: kGrey2,
              ),
              const SizedBox(width: 4),
              Text(
                "RAINFALL",
                style: Styles.textStyleSemiBold14.copyWith(
                  color: kGrey2,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text("1.8 mm", style: Styles.textStyleRegular34),
          ),
          const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "in last hour",
              style: Styles.textStyleMedium20,
            ),
          ),
          const Spacer(),
          const Text(
            "Sunset: 7:25PM",
            style: Styles.textStyleRegular14,
          ),
        ],
      ),
    );
  }
}
