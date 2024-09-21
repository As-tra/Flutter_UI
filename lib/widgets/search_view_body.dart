import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/widgets/custom_search_bar.dart';
import 'package:weather_app/widgets/search_app_bar.dart';
import 'package:weather_app/widgets/weather_card_list.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        gradient: kGradient,
      ),
      child: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 50),
                SearchAppBar(),
                SizedBox(height: 20),
                CustomSearchBar(),
                SizedBox(height: 40),
              ],
            ),
          ),
          WeatherCardList(),
        ],
      ),
    );
  }
}
