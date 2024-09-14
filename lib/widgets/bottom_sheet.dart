import 'package:flutter/material.dart';
import 'package:weather_app/utils/assets.dart';
import 'package:weather_app/widgets/cursor_to_drag.dart';
import 'package:weather_app/widgets/custom_tab_bar.dart';
import 'package:weather_app/widgets/weather_state_item.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.38,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: _getDecoration(),
          child: ListView(
            controller: scrollController,
            padding: const EdgeInsets.symmetric(vertical: 9),
            children: const [
              CursorToDrag(),
              SizedBox(height: 16),
              SizedBox(
                height: 120,
                child: CustomTabBar(),
              ),
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
