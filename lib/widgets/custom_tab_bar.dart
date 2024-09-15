import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/utils/styles.dart';
import 'package:weather_app/widgets/weather_state_list.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  static List<String> tabTitles = ["Hourly Forecast", "Weekly Forecast"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            tabAlignment: TabAlignment.fill,
            dividerColor: const Color(0xff4C3657),
            indicator: _buildIndicator(),
            tabs: tabTitles
                .map(
                  (e) => Tab(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        e,
                        style: Styles.textStyleSemiBold14.copyWith(
                          color: kGrey1,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 20),
          const SizedBox(
            height: 150,
            child: TabBarView(
              children: [
                WeatherStateList(),
                WeatherStateList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

BoxDecoration _buildIndicator() {
  return const BoxDecoration(
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(8),
      bottomRight: Radius.circular(8),
    ),
    border: Border(
      bottom: BorderSide(
        color: Color(0xffC692E5),
        width: 4,
      ),
    ),
  );
}
