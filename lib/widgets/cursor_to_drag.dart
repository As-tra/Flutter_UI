import 'package:flutter/material.dart';

class CursorToDrag extends StatelessWidget {
  const CursorToDrag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 5,
          width: 48,
          decoration: BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                offset: Offset(1, -3),
                color: Colors.black26,
                blurRadius: 3,
              )
            ],
          ),
        )
      ],
    );
  }
}
