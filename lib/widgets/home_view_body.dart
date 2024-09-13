import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/utils/assets.dart';
import 'package:weather_app/widgets/main_weather_info.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.imagesBg),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            const MainWeatherInfo(),
            Image.asset(
              Assets.imagesHouse,
            ),
          ],
        ),
      ),
    );
  }
}
