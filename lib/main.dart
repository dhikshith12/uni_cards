import 'package:flutter/material.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:svg_flutter/svg.dart';
import 'package:uni_clone/consts.dart';
import 'package:uni_clone/fifth_widget.dart';
import 'package:uni_clone/first_widget.dart';
import 'package:uni_clone/fourth_widget.dart';
import 'package:uni_clone/second_widget.dart';
import 'package:uni_clone/third_widget.dart';

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
    return Stack(
      children: [
        SizedBox.expand(
          child: ListView(
            children: const [
              FirstWidget(),
              SecondWidget(),
              ThirdWidget(),
              FourthWidget(),
              FifthWidget(),
              DownloadNow(),
              SecurityInfo(),
              Footer()
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            child: ResponsiveBreakpoints.of(context).isMobile 
            ? const ApplyNowMobile()
            : const SizedBox(),
          )
        )
      ],
    );
  }
}

class ApplyNowMobile extends StatelessWidget {
  const ApplyNowMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: applyNowBtnColor, borderRadius: BorderRadius.circular(10), 
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(.6),
          spreadRadius: 10,
          blurRadius: 15,
          offset: const Offset(0, 10), // changes position of shadow
        )]
      ),
      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Apply Now', 
            style: TextStyle(color: Colors.black, fontFamily: matterBold, fontSize: 18),
          ),
          SvgPicture.asset('assets/nxt_btn.svg',)
        ],
      ),
    );
  }
}