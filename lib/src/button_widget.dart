import 'package:flutter/material.dart';

import 'clipper_shape.dart';

class ButtonWidget extends StatelessWidget {
  final Widget icon;
  final String title;
  final int index;
  final VoidCallback onPressed;
  final int selectedIndex;
  final double textSize;
  final Color titleColor;
  final Color activeColor;

  const ButtonWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.onPressed,
    required this.index,
    required this.selectedIndex,
    required this.textSize,
    required this.titleColor,
    required this.activeColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          icon,
          SizedBox(
            height: index == selectedIndex ? 6 : 3.0,
            width: 0.0,
          ),
          index != selectedIndex
              ? Text(
                  title,
                  style: TextStyle(
                      fontSize: textSize,
                      color: titleColor,
                      fontWeight: FontWeight.bold),
                )
              : Transform.flip(
                  flipY: true,
                  child: CustomPaint(
                    // The Size Of The Canvas
                    size: const Size(70, 24),
                    // The First Painter In The Stack
                    painter: CurvedPainter(activeColor),
                  ),
                ),
          SizedBox(
            height: index == selectedIndex ? 0 : 10.0,
            width: 0.0,
          ),
        ],
      ),
    );
  }
}
