import 'package:flutter/material.dart';
import 'package:weather_app/utils/assets.dart';
import 'package:weather_app/widgets/bottom_sheet.dart';
import 'package:weather_app/widgets/main_weather_info.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            Assets.imagesBg,
            fit: BoxFit.cover,
          ),
        ),
        SafeArea(
          child: Column(
            children: [
              const MainWeatherInfo(),
              const SizedBox(height: 20),
              Image.asset(
                Assets.imagesHouse,
              ),
            ],
          ),
        ),
        const CustomBottomSheet(),
      ],
    );
  }
}
