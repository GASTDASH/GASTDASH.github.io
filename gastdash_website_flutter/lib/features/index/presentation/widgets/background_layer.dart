import 'package:flutter/material.dart';
import 'package:gastdash_website_flutter/features/index/index.dart';

abstract class BackgroundLayer extends StatelessWidget {
  const BackgroundLayer({super.key, required this.color});

  final Color color;
}

class BackgroundLayer1 extends BackgroundLayer {
  const BackgroundLayer1({super.key, required super.color});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundLight(
          alignment: AlignmentGeometry.topRight,
          color: color,
          right: 350,
          top: 120,
        ),
        BackgroundLight(
          alignment: AlignmentGeometry.topLeft,
          color: color,
          left: 100,
          top: 600,
        ),
        BackgroundLight(
          alignment: AlignmentGeometry.topRight,
          color: color,
          right: 100,
          top: 1000,
        ),
        BackgroundLight(
          alignment: AlignmentGeometry.topLeft,
          color: color,
          left: 200,
          top: 1500,
        ),

        BackgroundLight(
          alignment: AlignmentGeometry.topLeft,
          color: color,
          left: 100,
          top: 2000,
        ),
      ],
    );
  }
}

class BackgroundLayer2 extends BackgroundLayer {
  const BackgroundLayer2({super.key, required super.color});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundLight(
          alignment: AlignmentGeometry.topRight,
          color: color,
          blurRadius: 80,
          right: 80,
          top: 450,
        ),
        BackgroundLight(
          alignment: AlignmentGeometry.topLeft,
          color: color,
          blurRadius: 80,
          left: 300,
          top: 900,
        ),
        BackgroundLight(
          alignment: AlignmentGeometry.topRight,
          color: color,
          blurRadius: 80,
          right: 300,
          top: 1200,
        ),
        BackgroundLight(
          alignment: AlignmentGeometry.topRight,
          color: color,
          blurRadius: 80,
          right: 200,
          top: 1850,
        ),
        BackgroundLight(
          alignment: AlignmentGeometry.topLeft,
          color: color,
          blurRadius: 80,
          left: 500,
          top: 2200,
        ),
      ],
    );
  }
}
