import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/utils/assets.dart';
import 'package:weather_app/utils/styles.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: kGrey1,
          ),
        ),
        const Text(
          "Weather",
          style: Styles.textStyleMedium20,
        ),
        const Spacer(),
        Image.asset(Assets.imagesCircleMenu),
      ],
    );
  }
}
