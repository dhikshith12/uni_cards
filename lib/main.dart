import 'package:flutter/material.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
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
    return ListView(
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
    );
  }
}

