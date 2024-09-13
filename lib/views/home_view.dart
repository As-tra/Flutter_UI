import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBgColor,
      body: HomeViewBody(),
    );
  }
}
