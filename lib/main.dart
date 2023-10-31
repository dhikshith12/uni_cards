import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:svg_flutter/svg.dart';
import 'package:uni_clone/consts.dart';
import 'package:uni_clone/responsive_padding.dart';

void main() {
  runApp(const UniClone());
}

class UniClone extends StatefulWidget {
  const UniClone({super.key});

  @override
  State<UniClone> createState() => _UniCloneState();
}

class _UniCloneState extends State<UniClone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveBreakpoints.builder(
        useShortestSide: true,
        debugLog: true,
        breakpoints: const [
          Breakpoint(start: 0, end: 229, name: tooSmallBreakpoint),
          Breakpoint(start: 230, end: 767, name: MOBILE),
          Breakpoint(start: 768, end: 1920, name: DESKTOP),
          Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
        child: Builder(builder: (context) {
          return const Scaffold(
            backgroundColor: Colors.black,
            body: MainBody(),
          );
        }),
      ),
    );
  }
}

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).breakpoint.name ==
        tooSmallBreakpoint) {
      return const Center(
        child: Text('Too small screen',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontFamily: matterBold, fontSize: 30)),
      );
    }
    return ListView(
      children: [
        const FirstWidget(),
        Container(
          height: 500,
          width: double.infinity,
          color: Colors.white,
        )
      ],
    );
  }
}

class FirstWidget extends StatefulWidget {
  const FirstWidget({
    super.key,
  });

  @override
  State<FirstWidget> createState() => _FirstWidgetState();
}

class _FirstWidgetState extends State<FirstWidget> {
  bool menuIconClicked = false;

  Widget commonBody = const Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      MainBodyImage(),
      SizedBox(
        height: 20,
      ),
      TitleAndSubTitleWidget()
    ],
  );
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height,
      child: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            'assets/bg.png',
            fit: BoxFit.cover,
          )),
          DefaultPadding(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const UniLogo(),
                    ResponsiveBreakpoints.of(context).isMobile
                        ? GestureDetector(
                            onTap: () {
                              setState(() {
                                menuIconClicked = !menuIconClicked;
                              });
                            },
                            child: MenuIcon(didPress: menuIconClicked,))
                        : const UniPaycheck()
                  ],
                ),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: menuIconClicked &&
                          ResponsiveBreakpoints.of(context).isMobile
                      ? Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          decoration:
                              const BoxDecoration(color: Colors.black54),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Uni Paycheck',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: matterRegular,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)),
                              SvgPicture.asset(
                                'assets/nxt_btn.svg',
                                colorFilter: const ColorFilter.mode(
                                    Colors.white, BlendMode.srcIn),
                              )
                            ],
                          ),
                        )
                      : const SizedBox(),
                ),
                Expanded(
                  child: Center(
                    child: ResponsiveBreakpoints.of(context).isMobile
                        ? Row(
                            children: [
                              if (width > criticalMobileBreakpoint)
                                SizedBox(
                                  width: criticalMobileBreakpoint - 40.0,
                                  child: commonBody,
                                )
                              else if (width <= criticalMobileBreakpoint)
                                Expanded(child: commonBody)
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const TitleAndSubTitleWidget(),
                                  if (ResponsiveBreakpoints.of(context)
                                      .isDesktop)
                                    const ApplyButton(),
                                ],
                              )),
                              const SizedBox(
                                width: 40,
                              ),
                              const MainBodyImage()
                            ],
                          ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ApplyButton extends StatefulWidget {
  const ApplyButton({
    super.key,
  });

  @override
  State<ApplyButton> createState() => _ApplyButtonState();
}

class _ApplyButtonState extends State<ApplyButton> {
  bool _checked = true;
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 55,
          width: 320,
          padding: const EdgeInsets.only(left: 15),
          margin: const EdgeInsets.only(top: 45, bottom: 15),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                controller: _controller,
                onChanged: (_) {
                  setState(() {});
                },
                cursorColor: Colors.white,
                style: const TextStyle(color: Colors.white),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Phone number',
                    hintStyle: TextStyle(
                        color: enterPhnColor,
                        fontFamily: matterRegular,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
              )),
              if (_controller.text.isNotEmpty)
                GestureDetector(
                    onTap: () {
                      _controller.clear();
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: SvgPicture.asset('assets/cancel.svg'),
                    )),
              Container(
                height: 45,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                  color: applyNowBtnColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    'Apply Now',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: matterRegular,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 400,
          child: Row(
            children: [
              Checkbox(
                value: _checked,
                onChanged: (didCheck) {
                  setState(() {
                    _checked = didCheck ?? _checked;
                  });
                },
                fillColor: MaterialStateProperty.all(Colors.white),
                checkColor: Colors.black,
                splashRadius: 0.0,
                overlayColor: MaterialStateProperty.all(Colors.white),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              const Expanded(
                  child: Text(
                UniTexts.agreementText,
                style: TextStyle(fontSize: 12),
              ))
            ],
          ),
        ),
      ],
    );
  }
}

class TitleAndSubTitleWidget extends StatelessWidget {
  const TitleAndSubTitleWidget({
    super.key,
  });

  static const childToReturn = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      MainTitleText(),
      SizedBox(
        height: 25,
      ),
      SubTitleText()
    ],
  );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width > criticalMobileBreakpoint && width < criticalBreakpoint) {
      return const SizedBox(
        width: criticalMobileBreakpoint,
        child: childToReturn,
      );
    }
    return childToReturn;
  }
}

class MainTitleText extends StatelessWidget {
  const MainTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    double width = MediaQuery.of(context).size.width;
    if (width > criticalMobileBreakpoint && width < 1145.0) {
      return getRichText(isMobile);
    }
    return SizedBox(
      width: 550,
      child: getRichText(isMobile),
    );
  }

  RichText getRichText(bool isMobile) {
    return RichText(
      maxLines: 8,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
          style: TextStyle(
              fontFamily: matterRegular, fontSize: isMobile ? 26 : 40),
          children: [
            TextSpan(
              text: UniTexts.mainTitleBlocks[0],
              style: TextStyle(
                  fontFamily: heavyBold,
                  fontSize: isMobile ? 26 : 50,
                  fontWeight: FontWeight.w900),
            ),
            TextSpan(
              text: UniTexts.mainTitleBlocks[1],
              style: TextStyle(
                  fontFamily: matterBold,
                  fontSize: isMobile ? 26 : 50,
                  fontWeight: FontWeight.w500),
            )
          ]),
    );
  }
}

class SubTitleText extends StatelessWidget {
  const SubTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        children: UniTexts.subTitleBlocks.map<InlineSpan>((e) {
          if (e == '*') {
            return WidgetSpan(
                baseline: TextBaseline.ideographic,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 2.5),
                  child: SvgPicture.asset('assets/star_text_seperator.svg',
                      alignment: Alignment.center),
                ));
          }
          return TextSpan(
            text: e,
            style: TextStyle(
              fontFamily: matterRegular,
              fontWeight: FontWeight.w500,
              fontSize: isMobile ? 14 : 16,
            ),
          );
        }).toList(),
      ),
    );
  }
}

class MainBodyImage extends StatelessWidget {
  const MainBodyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/nx_wave_hero.png',
      width: ResponsiveBreakpoints.of(context).isMobile ? 250 : 450,
    );
  }
}

class MenuIcon extends StatelessWidget {
  final bool didPress;
  const MenuIcon({super.key, required this.didPress});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
        didPress ? 'assets/menu_cancel.svg' : 'assets/menu_icon.svg');
  }
}

class UniLogo extends StatelessWidget {
  const UniLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/uni.svg',
      width: 120,
    );
  }
}

class UniPaycheck extends StatefulWidget {
  const UniPaycheck({super.key});

  @override
  State<UniPaycheck> createState() => _UniPaycheckState();
}

class _UniPaycheckState extends State<UniPaycheck> {
  bool _didHover = false;

  void _changeOnHover(bool onHover) {
    setState(() {
      _didHover = onHover;
    });
  }

  void _onHoverEnter(PointerEvent details) => _changeOnHover(true);

  void _onHoverExit(PointerEvent details) => _changeOnHover(false);
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: _onHoverEnter,
      onExit: _onHoverExit,
      child: AnimatedContainer(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
          color: _didHover ? Colors.black : Colors.black54,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          'Uni Paycheck',
          style: TextStyle(
              color: _didHover ? primaryColor : Colors.white,
              fontFamily: matterRegular,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
