import 'package:flutter/material.dart';
import 'package:weather_app/utils/assets.dart';

class CusotmBottomNav extends StatelessWidget {
  const CusotmBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.imagesTabBar),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Assets.imagesMap),
          Image.asset(Assets.imagesCenterButton),
          Image.asset(Assets.imagesMenu),
        ],
      ),
    );
  }
}
