import 'package:flutter/material.dart';
import 'package:weather_app/utils/assets.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.38,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(44),
            image: const DecorationImage(
              image: AssetImage(Assets.imagesBottomSheetBg),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
