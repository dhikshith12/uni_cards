import 'package:flutter/material.dart';
import 'package:uni_clone/consts.dart';

class DefaultPadding extends StatelessWidget {
  const DefaultPadding({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: getResponsiveChild(width),
    );
  }

  RenderObjectWidget getResponsiveChild(double width) {
    if (width < criticalBreakpoint) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: child,
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: criticalBreakpoint,
            child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: child,
                )),
          ),
        ],
      );
    }
  }
}
