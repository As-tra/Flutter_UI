
import 'package:flutter/material.dart';
import 'package:weather_app/widgets/brief_weather_description.dart';

class ScrolledHomeView extends StatelessWidget {
  const ScrolledHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color(0xff45278B),
              Color(0xff2E335A),
            ],
          ),
        ),
        child: const BriefWeatherDescription(),
      );
  }
}