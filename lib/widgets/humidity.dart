import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/utils/styles.dart';
import 'package:weather_app/widgets/custom_container.dart';

class Humidity extends StatelessWidget {
  const Humidity({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.water,
                color: kGrey2,
              ),
              const SizedBox(width: 4),
              Text(
                "HUMIDITY",
                style: Styles.textStyleSemiBold14.copyWith(
                  color: kGrey2,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text("90%", style: Styles.textStyleRegular34),
          ),
          const Spacer(),
          const Text(
            "The dew point is 17 righ now.",
            style: Styles.textStyleRegular14,
          ),
        ],
      ),
    );
  }
}
