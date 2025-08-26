import 'dart:ui';

import 'package:flutter/material.dart';

class BlurredContainer extends StatelessWidget {
  const BlurredContainer({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.onTap,
  });

  final Widget child;
  final double? width;
  final double? height;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24),
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(24),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: Colors.grey.shade200.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: Colors.grey.shade200.withValues(alpha: 0.2),
                width: 2,
              ),
            ),
            child: Stack(
              alignment: AlignmentGeometry.center,
              children: [
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.05,
                    child: Image(
                      image: AssetImage('assets/images/noise.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(20), child: child),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
