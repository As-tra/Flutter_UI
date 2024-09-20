import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/controller/scrollCubit/scroll_cubit.dart';
import 'package:weather_app/widgets/bottom_sheet.dart';
import 'package:weather_app/widgets/cusotm_bottom_nav.dart';
import 'package:weather_app/widgets/regular_home_view.dart';
import 'package:weather_app/widgets/scrolled_home_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScrollCubit, bool>(
      builder: (context, state) {
        return Stack(
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 400),
              child: state ? const RegularHomeView() : const ScrolledHomeView(),
            ),
            const CustomBottomSheet(),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: !state
                  ? const SizedBox()
                  : const Align(
                      alignment: Alignment(1, 1),
                      child: CusotmBottomNav(),
                    ),
            ),
          ],
        );
      },
    );
  }
}
