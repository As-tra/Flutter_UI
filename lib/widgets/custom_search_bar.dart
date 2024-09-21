import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff2C2A53),
        boxShadow: [
          // Outer shadow to give the effect of depth
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            offset: const Offset(0, 4),
            blurRadius: 6,
            spreadRadius: 1,
          ),
          // Inner shadow to simulate the hole
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: const Offset(0, -2),
            blurRadius: 4,
            spreadRadius: 2,
            blurStyle: BlurStyle.inner,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: const TextField(
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            hintText: "Search for a city or airport",
            prefixIcon: Icon(
              Icons.search,
              color: Color(0xffA19FBA),
            ),
            hintStyle: TextStyle(
              color: Color(0xffA19FBA),
            ),
          ),
        ),
      ),
    );
  }
}
