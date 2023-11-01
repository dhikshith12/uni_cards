import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:svg_flutter/svg.dart';
import 'package:uni_clone/consts.dart';
import 'package:uni_clone/components/width_constraint_clip.dart';

class ThirdWidget extends StatefulWidget {
  const ThirdWidget({super.key});

  @override
  State<ThirdWidget> createState() => _ThirdWidgetState();
}

class _ThirdWidgetState extends State<ThirdWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.only(bottom: 20),
      width: width,
      child: Stack(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'assets/circles.png',
                width: 0.7 * width,
                fit: BoxFit.cover,
              )),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: isMobile
                      ? MainAxisAlignment.start
                      : MainAxisAlignment.center,
                  crossAxisAlignment: isMobile
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50),
                    Builder(builder: (context) {
                      if (isMobile) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'We’ve all heard of instant groceries, now say hello to',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: matterRegular,
                                        fontWeight: FontWeight.bold,
                                        fontSize: isMobile ? 26 : 36),
                                  ),
                                  const SizedBox(height: 20),
                                  ShaderMask(
                                    blendMode: BlendMode.srcIn,
                                    shaderCallback: (bounds) =>
                                        const LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xff65ecd8),
                                        Color(0xfffdef78),
                                      ],
                                      stops: [0.1107, 0.8028],
                                    ).createShader(
                                      Rect.fromLTWH(
                                          0, 0, bounds.width, bounds.height),
                                    ),
                                    child: Text(
                                      'instant credit.',
                                      style: TextStyle(
                                          fontFamily: matterRegular,
                                          fontWeight: FontWeight.bold,
                                          fontSize: isMobile ? 26 : 36),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text(
                                      UniTexts.fourthPageBoxySubtext0,
                                      style: TextStyle(
                                          fontFamily: matterRegular,
                                          color: fourthPageSubTxtColor,
                                          fontSize: isMobile ? 16 : 22),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                'assets/app_screen_1.webp',
                                width: 500,
                              ),
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
                                child: WidthConstraintClip(
                                  criticalWidth: 540,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'We’ve all heard of instant groceries, now say hello to',
                                        style: TextStyle(
                                            fontFamily: matterRegular,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: isMobile ? 26 : 36),
                                      ),
                                      ShaderMask(
                                        blendMode: BlendMode.srcIn,
                                        shaderCallback: (bounds) =>
                                            const LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color(0xff65ecd8),
                                            Color(0xfffdef78),
                                          ],
                                          stops: [0.1107, 0.8028],
                                        ).createShader(
                                          Rect.fromLTWH(0, 0, bounds.width,
                                              bounds.height),
                                        ),
                                        child: Text(
                                          'instant credit.',
                                          style: TextStyle(
                                              fontFamily: matterRegular,
                                              fontWeight: FontWeight.bold,
                                              fontSize: isMobile ? 26 : 36),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        child: Text(
                                          UniTexts.fourthPageBoxySubtext0,
                                          style: TextStyle(
                                              fontFamily: matterRegular,
                                              color: fourthPageSubTxtColor,
                                              fontSize: isMobile ? 16 : 22),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Expanded(
                                child: Image.asset(
                                  'assets/app_screen_1.webp',
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                    Builder(builder: (context) {
                      if (isMobile) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'With Uni,',
                                    style: TextStyle(
                                        fontFamily: matterRegular,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: isMobile ? 26 : 36),
                                  ),
                                  ShaderMask(
                                    blendMode: BlendMode.srcIn,
                                    shaderCallback: (bounds) =>
                                        const LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xff65ecd8),
                                        Color(0xfffdef78),
                                      ],
                                      stops: [0.1107, 0.8028],
                                    ).createShader(
                                      Rect.fromLTWH(
                                          0, 0, bounds.width, bounds.height),
                                    ),
                                    child: Text(
                                      'you’re always in control.',
                                      style: TextStyle(
                                          fontFamily: matterRegular,
                                          fontWeight: FontWeight.bold,
                                          fontSize: isMobile ? 26 : 36),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text(
                                      UniTexts.fourthPageBoxySubText1,
                                      style: TextStyle(
                                          fontFamily: matterRegular,
                                          color: fourthPageSubTxtColor,
                                          fontSize: isMobile ? 16 : 22),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Image.asset(
                                'assets/app_screen_2.webp',
                                width: 500,
                              ),
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
                                child: WidthConstraintClip(
                                  criticalWidth: 540,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'With Uni,',
                                        style: TextStyle(
                                            fontFamily: matterRegular,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: isMobile ? 26 : 36),
                                      ),
                                      ShaderMask(
                                        blendMode: BlendMode.srcIn,
                                        shaderCallback: (bounds) =>
                                            const LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color(0xff65ecd8),
                                            Color(0xfffdef78),
                                          ],
                                          stops: [0.1107, 0.8028],
                                        ).createShader(
                                          Rect.fromLTWH(0, 0, bounds.width,
                                              bounds.height),
                                        ),
                                        child: Text(
                                          'you’re always in control.',
                                          style: TextStyle(
                                              fontFamily: matterRegular,
                                              fontWeight: FontWeight.bold,
                                              fontSize: isMobile ? 26 : 36),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        child: Text(
                                          UniTexts.fourthPageBoxySubText1,
                                          style: TextStyle(
                                              fontFamily: matterRegular,
                                              color: fourthPageSubTxtColor,
                                              fontSize: isMobile ? 16 : 22),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Expanded(
                                child: Image.asset(
                                  'assets/app_screen_2.webp',
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
                        return Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    child: Image.asset(
                                  'assets/whatsapp_bubble.webp',
                                  height: 80,
                                  width: 80,
                                )),
                                Expanded(
                                    child: Column(
                                  children: [
                                    Text(
                                      'Help, just a WhatsApp away. Anytime, Anyday.',
                                      style: TextStyle(
                                          fontSize: isMobile ? 20 : 26,
                                          fontFamily: matterRegular,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      'During hectic work hours. On lazy sunday mornings. In the thick of Night\nAnytime.',
                                      style: TextStyle(
                                          fontFamily: matterRegular,
                                          fontSize: isMobile ? 13 : 18,
                                          color: fourthPageThreeColSubTxtColor),
                                    )
                                  ],
                                ))
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Column(
                                      children: [
                                        Text(
                                          'No hidden charges, no laster minute surprises.',
                                          style: TextStyle(
                                              fontSize: isMobile ? 20 : 26,
                                              fontFamily: matterRegular,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          '100% money back gurantee if a charge is applied without your knowledge.',
                                          style: TextStyle(
                                              fontFamily: matterRegular,
                                              fontSize: isMobile ? 13 : 18,
                                              color:
                                                  fourthPageThreeColSubTxtColor),
                                        )
                                      ],
                                    )),
                                Expanded(
                                    flex: 2,
                                    child: Image.asset(
                                      'assets/rupee_bubble.webp',
                                      height: 80,
                                      width: 80,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: Image.asset(
                                      'assets/antivirus_bubble.webp',
                                      height: 80,
                                      width: 80,
                                    )),
                                Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Super secure. Because we care about your money.',
                                          style: TextStyle(
                                              fontSize: isMobile ? 20 : 26,
                                              fontFamily: matterRegular,
                                              color: Colors.white),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5),
                                            child: SvgPicture.asset(
                                              'assets/pcidss_cert.svg',
                                            ))
                                      ],
                                    ))
                              ],
                            )
                          ].map((e) => Padding(padding: const EdgeInsets.symmetric(vertical: 30), child: e,)).toList(),
                        );
                      }
                      return WidthConstraintClip(
                        criticalWidth: 1200,
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/whatsapp_bubble.webp',
                                  height: 120,
                                  width: 120,
                                ),
                                Text(
                                  'Help, just a WhatsApp away. Anytime, Anyday.',
                                  style: TextStyle(
                                      fontSize: isMobile ? 20 : 26,
                                      fontFamily: matterRegular,
                                      color: Colors.white),
                                ),
                                Text(
                                  'During hectic work hours. On lazy sunday mornings. In the thick of Night\nAnytime.',
                                  style: TextStyle(
                                      fontFamily: matterRegular,
                                      fontSize: isMobile ? 16 : 18,
                                      color: fourthPageThreeColSubTxtColor),
                                )
                              ]
                                  .map((e) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: e,
                                      ))
                                  .toList(),
                            )),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/rupee_bubble.webp',
                                  height: 120,
                                  width: 120,
                                ),
                                Text(
                                  'No hidden charges, no laster minute surprises.',
                                  style: TextStyle(
                                      fontSize: isMobile ? 20 : 26,
                                      fontFamily: matterRegular,
                                      color: Colors.white),
                                ),
                                Text(
                                  '100% money back gurantee if a charge is applied without your knowledge.',
                                  style: TextStyle(
                                      fontFamily: matterRegular,
                                      fontSize: isMobile ? 16 : 18,
                                      color: fourthPageThreeColSubTxtColor),
                                )
                              ]
                                  .map((e) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: e,
                                      ))
                                  .toList(),
                            )),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/antivirus_bubble.webp',
                                  height: 120,
                                  width: 120,
                                ),
                                Text(
                                  'Super secure. Because we care about your money.',
                                  style: TextStyle(
                                      fontSize: isMobile ? 20 : 26,
                                      fontFamily: matterRegular,
                                      color: Colors.white),
                                ),
                                Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: SvgPicture.asset(
                                      'assets/pcidss_cert.svg',
                                    ))
                              ]
                                  .map((e) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: e,
                                      ))
                                  .toList(),
                            )),
                          ],
                        ),
                      );
                    })
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
