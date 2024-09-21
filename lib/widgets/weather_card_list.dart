import 'package:flutter/material.dart';
import 'package:weather_app/utils/assets.dart';
import 'package:weather_app/widgets/weather_card_item.dart';

class WeatherCardList extends StatelessWidget {
  const WeatherCardList({super.key});

  static List items = [
    Assets.icons2,
    Assets.icons1,
    Assets.icons3,
    Assets.icons3,
    Assets.icons4,
    Assets.icons5,
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: WeatherCardItem(
            weatherImage: items[index],
          ),
        );
      },
    );
  }
}
