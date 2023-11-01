import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:svg_flutter/svg.dart';
import 'package:uni_clone/components/width_constraint_clip.dart';
import 'package:uni_clone/consts.dart';

class FourthWidget extends StatelessWidget {
  const FourthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Container(
      color: footerLightColor,
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment:
            isMobile ? MainAxisAlignment.start : MainAxisAlignment.center,
        crossAxisAlignment:
            isMobile ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          WidthConstraintClip(
            criticalWidth: 900,
            child: ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (bounds) => const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xff65ecd8),
                  Color(0xfffdef78),
                ],
                stops: [0.1107, 0.8028],
              ).createShader(
                Rect.fromLTWH(0, 0, bounds.width, bounds.height),
              ),
              child: Text(
                'At Uni, we’re committed to delivering an unmatched credit experience for millions of Indians.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: matterRegular,
                    fontWeight: FontWeight.bold,
                    fontSize: isMobile ? 26 : 36),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          WidthConstraintClip(
            criticalWidth: 700,
            child: Text('On this mission, we’ve partnered with some of the best in the business.', 
            textAlign: TextAlign.center,
              style: TextStyle(
                color: fourthPageSubTxtColor,
                fontFamily: matterRegular,
                fontSize: isMobile? 18: 22
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: SvgPicture.asset('assets/SBM.svg', color: fourthPageSubTxtColor,),
            ),
          ),
          const SizedBox(height: 50,)
        ],
      ),
    );
  }
}
