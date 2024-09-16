import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/utils/assets.dart';
import 'package:weather_app/utils/styles.dart';

class CustomCompass extends StatelessWidget {
  const CustomCompass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: kGrey2,
              ),
            ),
            child: Image.asset(
              Assets.imagesCompass,
            ),
          ),
        ),
        _buildDirection(direction: "N"),
        _buildDirection(direction: "W"),
        _buildDirection(direction: "E"),
        _buildDirection(direction: "S"),
      ],
    );
  }

  /// Function name : _buildDirection
  /// @params direction (String)
  /// @return Alignment
  /// Inside the function 
  ///  1. return Alignment based on the Direction passed to the function
  ///   -N => top center
  ///   -W => center left
  ///   -E => center right
  ///   -S => bottom center
  /// 
  Align _buildDirection({required String direction}) {
    return Align(
      alignment: direction == "N"
          ? Alignment.topCenter
          : direction == "S"
              ? Alignment.bottomCenter
              : direction == "W"
                  ? Alignment.centerLeft
                  : Alignment.centerRight,
      child: Text(
        direction,
        style: Styles.textStyleSemiBold16,
      ),
    );
  }
}
