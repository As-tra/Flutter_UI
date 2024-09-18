import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/controller/scrollCubit/scroll_cubit.dart';
import 'package:weather_app/utils/assets.dart';
import 'package:weather_app/widgets/cursor_to_drag.dart';
import 'package:weather_app/widgets/custom_tab_bar.dart';
import 'package:weather_app/widgets/weather_all_details.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  late DraggableScrollableController _controller;
  String diretion = "top";

  @override
  void initState() {
    super.initState();
    _controller = DraggableScrollableController();
    _controller.addListener(_handleScroll);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  ///
  /// Function name: _handleScroll
  /// Inisde the function
  ///  1.listen if the user is scroll up
  ///  2. automaticaly resize the Draggable Sheet to the max height
  void _handleScroll() {
    if (diretion == "top" && _controller.size > .45) {
      diretion = "unset";
      _controller.animateTo(
        kMaxDraggableSheetSize,
        duration: const Duration(milliseconds: 200),
        curve: Curves.linear,
      );
      BlocProvider.of<ScrollCubit>(context).updateUI();
    }
    if (diretion == "down" && _controller.size < kMaxDraggableSheetSize) {
      diretion = "unset";
      _controller.animateTo(
        kInitialDraggableSheetSize,
        duration: const Duration(milliseconds: 200),
        curve: Curves.linear,
      );
      BlocProvider.of<ScrollCubit>(context).updateUI();
    }
    if (_controller.size == kMaxDraggableSheetSize) {
      diretion = "down";
    }
    if (_controller.size == kInitialDraggableSheetSize) {
      diretion = "top";
    }
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      controller: _controller,
      initialChildSize: kInitialDraggableSheetSize,
      minChildSize: kInitialDraggableSheetSize,
      maxChildSize: kMaxDraggableSheetSize,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: _getDecoration(),
          child: ListView(
            controller: scrollController,
            padding: const EdgeInsets.symmetric(vertical: 9),
            children: const [
              CursorToDrag(),
              SizedBox(height: 16),
              CustomTabBar(),
              SizedBox(height: 25),
              WeatherAllDetails(),
              // weather datails here
            ],
          ),
        );
      },
    );
  }

  BoxDecoration _getDecoration() {
    return BoxDecoration(
      border: _buildBorder(),
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(44),
        topRight: Radius.circular(44),
      ),
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xff2E335A),
          Color(0xff1C1B33),
        ],
      ),
      image: const DecorationImage(
        image: AssetImage(Assets.imagesNewBottomSheetBg),
        fit: BoxFit.fill,
      ),
    );
  }

  Border _buildBorder() {
    return const Border(
      top: BorderSide(
        color: Colors.white,
        width: 0.3,
      ),
    );
  }
}
