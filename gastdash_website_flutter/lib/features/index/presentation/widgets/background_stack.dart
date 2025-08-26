import 'package:flutter/material.dart';
import 'package:gastdash_website_flutter/features/index/index.dart';

class BackgroundStack1 extends StatelessWidget {
  const BackgroundStack1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundLight(
          alignment: AlignmentGeometry.topRight,
          color: Color.fromARGB(255, 252, 102, 255),
          right: 350,
          top: 120,
        ),
        // BackgroundLight(
        //   alignment: AlignmentGeometry.topRight,
        //   color: Color.fromARGB(255, 252, 102, 255),
        //   top: 400,
        // ),
        BackgroundLight(
          alignment: AlignmentGeometry.topLeft,
          color: Color.fromARGB(255, 252, 102, 255),
          left: 100,
          top: 600,
        ),
        BackgroundLight(
          alignment: AlignmentGeometry.topRight,
          color: Color.fromARGB(255, 252, 102, 255),
          right: 100,
          top: 1000,
        ),
        BackgroundLight(
          alignment: AlignmentGeometry.topLeft,
          color: Color.fromARGB(255, 252, 102, 255),
          left: 200,
          top: 1500,
        ),

        BackgroundLight(
          alignment: AlignmentGeometry.topLeft,
          color: Color.fromARGB(255, 252, 102, 255),
          left: 100,
          top: 2000,
        ),
      ],
    );
  }
}

class BackgroundStack2 extends StatelessWidget {
  const BackgroundStack2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundLight(
          alignment: AlignmentGeometry.topRight,
          color: Color(0xFF18B2DE),
          blurRadius: 90,
          right: 80,
          top: 450,
        ),
        BackgroundLight(
          alignment: AlignmentGeometry.topLeft,
          color: Color(0xFF18B2DE),
          blurRadius: 90,
          left: 300,
          top: 900,
        ),
        BackgroundLight(
          alignment: AlignmentGeometry.topRight,
          color: Color(0xFF18B2DE),
          blurRadius: 90,
          right: 300,
          top: 1200,
        ),
        BackgroundLight(
          alignment: AlignmentGeometry.topRight,
          color: Color(0xFF18B2DE),
          blurRadius: 90,
          right: 200,
          top: 1850,
        ),
        BackgroundLight(
          alignment: AlignmentGeometry.topLeft,
          color: Color(0xFF18B2DE),
          blurRadius: 90,
          left: 500,
          top: 2200,
        ),
      ],
    );
  }
}
