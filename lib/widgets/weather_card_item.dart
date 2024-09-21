import 'package:flutter/material.dart';
import 'package:weather_app/utils/assets.dart';
import 'package:weather_app/widgets/weather_card_item_info.dart';

class WeatherCardItem extends StatelessWidget {
  const WeatherCardItem({super.key, required this.weatherImage});
  final String weatherImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned.fill(
          child: Image.asset(
            Assets.imagesRectangle,
            fit: BoxFit.contain,
          ),
        ),
        const WeatherCardItemInfo(),
        Positioned(
          top: -30,
          right: 0,
          child: Image.asset(weatherImage),
        ),
      ],
    );
  }
}
