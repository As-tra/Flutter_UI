import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/utils/styles.dart';
import 'package:weather_app/widgets/custom_container.dart';
import 'dart:math' as math;

class Pressure extends StatelessWidget {
  const Pressure({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.speed_outlined,
                color: kGrey2,
              ),
              const SizedBox(width: 4),
              Text(
                "PRESSURE",
                style: Styles.textStyleSemiBold14.copyWith(
                  color: kGrey2,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: FractionallySizedBox(
              widthFactor: 1,
              heightFactor: 1,
              child: CustomPaint(
                painter: CircularWithGapsPainter(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CircularWithGapsPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 10.0; // Customize the thickness of the circle
    double gapSize = math.pi / 20; // Adjust the gap size (radians)
    int numSegments =
        30; // Adjust the number of segments (more segments, more gaps)

    // Define the paint for the circle segments
    Paint paint = Paint()
      ..color = kGrey2 // Color of the segments
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    double radius = (size.width - strokeWidth) / 2;
    Offset center = Offset(size.width / 2, size.height / 2);

    double segmentAngle = (2 * math.pi / numSegments) - gapSize;

    for (int i = 0; i < numSegments; i++) {
      double startAngle = i * (segmentAngle + gapSize) - math.pi / 2;
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        segmentAngle,
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
