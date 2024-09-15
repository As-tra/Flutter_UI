import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/utils/assets.dart';
import 'package:weather_app/utils/styles.dart';
import 'package:weather_app/widgets/custom_container.dart';
import 'package:weather_app/widgets/custom_rise_shape.dart';

class SunRise extends StatelessWidget {
  const SunRise({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                Assets.iconsSunrise,
                height: 24,
                colorFilter: const ColorFilter.mode(kGrey2, BlendMode.srcIn),
              ),
              const SizedBox(width: 4),
              Text(
                "SUNRISE",
                style: Styles.textStyleSemiBold14.copyWith(
                  color: kGrey2,
                ),
              ),
            ],
          ),
          const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text("5:28 AM", style: Styles.textStyleRegular34),
          ),
          const SizedBox(height: 10),
          const CustomSunRiseShape(),
          const SizedBox(height: 10),
          const Text(
            "Sunset: 7:25PM",
            style: Styles.textStyleRegular14,
          ),
        ],
      ),
    );
  }
}
