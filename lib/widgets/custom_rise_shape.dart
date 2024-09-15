import 'package:flutter/material.dart';

class CustomSunRiseShape extends StatelessWidget {
  const CustomSunRiseShape({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Stack(
        children: [
          Align(
            child: Container(
              height: 2,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: const Color(0xff9E9EA0),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 60,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color(0xff7688B3),
                  ),
                  left: BorderSide(
                    color: Color(0xff7688B3),
                  ),
                  right: BorderSide(
                    color: Color(0xff7688B3),
                  ),
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(150),
                  topRight: Radius.circular(150),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 12,
              decoration: const BoxDecoration(
                color: Color(0xffD6CDFF),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 8,
                    blurRadius: 6,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
