import 'package:flutter/material.dart';

class WidthConstraintClip extends StatelessWidget {
  final double criticalWidth;
  final Widget child;
  const WidthConstraintClip(
      {super.key, required this.criticalWidth, required this.child});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width > criticalWidth) {
      return SizedBox(
        width: criticalWidth,
        child: child,
      );
    }
    return child;
  }
}
