import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/controller/scrollCubit/scroll_cubit.dart';
import 'package:weather_app/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: BlocProvider(
        create: (context) => ScrollCubit(),
        child: const HomeViewBody(),
      ),
    );
  }
}
