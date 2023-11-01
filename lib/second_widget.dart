import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:svg_flutter/svg.dart';
import 'package:uni_clone/consts.dart';
import 'package:uni_clone/components/width_constraint_clip.dart';

class SecondWidget extends StatefulWidget {
  const SecondWidget({super.key});

  @override
  State<SecondWidget> createState() => _SecondWidgetState();
}

class _SecondWidgetState extends State<SecondWidget> {
  bool animate = false;
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        animate = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Container(
      color: Colors.white,
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment:
                isMobile ? MainAxisAlignment.start : MainAxisAlignment.center,
            crossAxisAlignment:
                isMobile ? CrossAxisAlignment.start : CrossAxisAlignment.center,
            children: [
              if (!isMobile)
                const SizedBox(
                  height: 100,
                ),
              ...UniTexts.secondPageBodyText
                  .asMap()
                  .map((key, line) => MapEntry(
                      key,
                      AnimatedSwitcher(
                        switchInCurve: Curves.easeIn,
                        duration: Duration(milliseconds: (key + 1) * 600),
                        transitionBuilder: (child, animation) => FadeTransition(
                          opacity: animation,
                          child: SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(0.0, 1.0),
                                end: const Offset(0.0, 0.0),
                              ).animate(animation),
                              child: child),
                        ),
                        layoutBuilder: (currentChild, previousChildren) =>
                            Stack(
                          clipBehavior: Clip.antiAlias,
                          children: [
                            if (currentChild != null) currentChild,
                          ],
                        ),
                        child: animate
                            ? RichText(
                                textAlign: isMobile
                                    ? TextAlign.start
                                    : TextAlign.center,
                                text: TextSpan(
                                  children: line.blocks
                                      .map<TextSpan>(
                                        (block) => TextSpan(
                                          text: block.text,
                                          style:
                                              block.getTs(isMobile ? 26 : 36),
                                        ),
                                      )
                                      .toList(),
                                ),
                              )
                            : const SizedBox(),
                      )))
                  .values,
              const SizedBox(height: 50),
              AnimatedSwitcher(
                switchInCurve: Curves.easeIn,
                duration: const Duration(milliseconds: 4*600),
                transitionBuilder: (child, animation) => FadeTransition(
                  opacity: animation,
                  child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0.0, -1.0),
                        end: const Offset(0.0, 0.0),
                      ).animate(animation),
                      child: child),
                ),
                layoutBuilder: (currentChild, previousChildren) => Stack(
                  clipBehavior: Clip.antiAlias,
                  children: [
                    if (currentChild != null) currentChild,
                  ],
                ),
                child: animate
                    ? Container(
                        height: isMobile ? 96 : 150,
                        width: isMobile ? 96 : 150,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff65ecd8),
                              Color(0xfffdef78),
                            ],
                            stops: [0.1107, 0.8028],
                          ),
                        ),
                        child: Center(
                            child: Padding(
                          padding: isMobile
                              ? const EdgeInsets.all(20.0)
                              : EdgeInsets.zero,
                          child: SvgPicture.asset(
                            'assets/down_arrow.svg',
                          ),
                        )),
                      )
                    : const SizedBox(),
              ),
              const SizedBox(height: 50),
              Builder(builder: (context) {
                if (isMobile) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/one_percent_cashback.png',
                          width: 280,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            RichText(
                                text: TextSpan(
                                    children: UniTexts.thirdPageBodyText0.blocks
                                        .map<InlineSpan>((e) => TextSpan(
                                            text: e.text, style: e.getTs(26)))
                                        .toList())),
                            const SizedBox(height: 20),
                            const Text(
                              UniTexts.thirdPageBodySubtitle0,
                              style: TextStyle(
                                fontFamily: matterRegular,
                                fontSize: 16,
                                color: SpanningTextLine.textLightColor,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }
                return WidthConstraintClip(
                  criticalWidth: 1248.0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WidthConstraintClip(
                                criticalWidth: 540,
                                child: RichText(
                                    text: TextSpan(
                                        children: UniTexts
                                            .thirdPageBodyText0.blocks
                                            .map<InlineSpan>((e) => TextSpan(
                                                text: e.text,
                                                style: e.getTs(36)))
                                            .toList())),
                              ),
                              const SizedBox(height: 20),
                              const WidthConstraintClip(
                                criticalWidth: 540,
                                child: Text(
                                  UniTexts.thirdPageBodySubtitle0,
                                  style: TextStyle(
                                    fontFamily: matterRegular,
                                    fontSize: 20,
                                    color: Color(0xFF9EA7AE),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          'assets/one_percent_cashback.png',
                          width: width < 1023 ? 280 : 448,
                        ),
                      ],
                    ),
                  ),
                );
              }),
              const SizedBox(
                height: 50,
              ),
              Builder(builder: (context) {
                if (isMobile) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/five_x_rewards.png',
                          width: 280,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            RichText(
                                text: TextSpan(
                                    children: UniTexts.thirdPageBodyText1.blocks
                                        .map<InlineSpan>((e) => TextSpan(
                                            text: e.text, style: e.getTs(26)))
                                        .toList())),
                          ],
                        )
                      ],
                    ),
                  );
                }
                return WidthConstraintClip(
                  criticalWidth: 1248.0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/five_x_rewards.png',
                          width: width < 1023 ? 280 : 448,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              WidthConstraintClip(
                                criticalWidth: 540,
                                child: RichText(
                                    text: TextSpan(
                                        children: UniTexts
                                            .thirdPageBodyText1.blocks
                                            .map<InlineSpan>((e) => TextSpan(
                                                text: e.text,
                                                style: e.getTs(36)))
                                            .toList())),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
              const SizedBox(
                height: 50,
              ),
              Builder(builder: (context) {
                if (isMobile) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/forex_globe.png',
                          width: 280,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            RichText(
                                text: TextSpan(
                                    children: UniTexts.thirdPageBodyText2.blocks
                                        .map<InlineSpan>((e) => TextSpan(
                                            text: e.text, style: e.getTs(26)))
                                        .toList())),
                          ],
                        )
                      ],
                    ),
                  );
                }
                return WidthConstraintClip(
                  criticalWidth: 1248.0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WidthConstraintClip(
                                criticalWidth: 540,
                                child: RichText(
                                    text: TextSpan(
                                        children: UniTexts
                                            .thirdPageBodyText2.blocks
                                            .map<InlineSpan>((e) => TextSpan(
                                                text: e.text,
                                                style: e.getTs(36)))
                                            .toList())),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'assets/forex_globe.png',
                          width: width < 1023 ? 280 : 448,
                        ),
                      ],
                    ),
                  ),
                );
              }),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 100),
                child: isMobile
                    ? WidthConstraintClip(
                        criticalWidth: 280,
                        child: RichText(
                            text: TextSpan(
                                children: UniTexts.thirdPageBodyText3.blocks
                                    .map<InlineSpan>((e) => TextSpan(
                                        text: e.text,
                                        style: e.getTs(isMobile ? 26 : 32)))
                                    .toList())),
                      )
                    : RichText(
                        text: TextSpan(
                            children: UniTexts.thirdPageBodyText3.blocks
                                .map<InlineSpan>((e) => TextSpan(
                                    text: e.text,
                                    style: e.getTs(isMobile ? 26 : 32)))
                                .toList())),
              )
            ]),
      ),
    );
  }
}
