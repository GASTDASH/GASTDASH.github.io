import 'package:flutter/material.dart';

class BackgroundLight extends StatelessWidget {
  const BackgroundLight({
    super.key,
    this.top = 0,
    this.bottom = 0,
    this.left = 0,
    this.right = 0,
    required this.color,
    required this.alignment,
    this.blurRadius = 120,
  });

  final AlignmentGeometry alignment;
  final double top;
  final double bottom;
  final double left;
  final double right;
  final Color color;
  final double blurRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(
        top: top,
        bottom: bottom,
        left: left,
        right: right,
      ),
      child: Align(
        alignment: alignment,
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [BoxShadow(color: color, blurRadius: blurRadius)],
          ),
        ),
      ),
    );
  }
}
