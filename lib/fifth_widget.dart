import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:svg_flutter/svg.dart';
import 'package:uni_clone/components/width_constraint_clip.dart';
import 'package:uni_clone/consts.dart';

class FifthWidget extends StatelessWidget {
  const FifthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment:
            isMobile ? MainAxisAlignment.start : MainAxisAlignment.center,
        crossAxisAlignment:
            isMobile ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          WidthConstraintClip(
            criticalWidth: 600,
            child: Text(
              'Please note that to stay compliant with RBI guidelines, we have discontinued Pay 1/3rd and Pay 1/2 cards for the time being.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: matterRegular,
                  fontSize: isMobile ? 16 : 18,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class SecurityInfo extends StatelessWidget {
  const SecurityInfo({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Container(
      color: const Color(0xFF222222),
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment:
            isMobile ? MainAxisAlignment.start : MainAxisAlignment.center,
        crossAxisAlignment:
            isMobile ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Uni maintains the highest level of security standards',
                textAlign: TextAlign.end,
                style:
                    TextStyle(fontFamily: matterRegular, color: Colors.white),
              ),
              const SizedBox(
                width: 10,
              ),
              SvgPicture.asset('assets/pcidss_cert.svg')
            ],
          ),
        ],
      ),
    );
  }
}

class DownloadNow extends StatelessWidget {
  const DownloadNow({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: const BoxDecoration(
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
      child: Column(
          mainAxisAlignment:
              isMobile ? MainAxisAlignment.start : MainAxisAlignment.center,
          crossAxisAlignment:
              isMobile ? CrossAxisAlignment.start : CrossAxisAlignment.center,
          children: [
            WidthConstraintClip(
                criticalWidth: 1250,
                child: isMobile
                    ? const Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Download now to get started',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: matterRegular,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              PlayBtn(),
                              SizedBox(
                                width: 10,
                              ),
                              AppStoreBtn()
                            ],
                          )
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'Download now to get started',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: matterRegular,
                                  fontWeight: FontWeight.bold,
                                  fontSize: isMobile ? 18 : 20),
                            ),
                          ),
                          const Row(
                            children: [
                              PlayBtn(),
                              SizedBox(
                                width: 10,
                              ),
                              AppStoreBtn()
                            ],
                          )
                        ],
                      ))
          ]),
    );
  }
}

class PlayBtn extends StatelessWidget {
  const PlayBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 3.0),
          borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/play_btn.svg'),
            const SizedBox(
              width: 5,
            ),
            const Text(
              'Google Play',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: matterRegular,
                  fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}

class AppStoreBtn extends StatelessWidget {
  const AppStoreBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 3.0),
          borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/apple.svg'),
            const SizedBox(
              width: 5,
            ),
            const Text(
              'App Store',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: matterRegular,
                  fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF121212),
      padding: const EdgeInsets.all(30),
      child: Center(
        child: SizedBox(
          width: 1000,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/logo_accent.svg'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '''
Indiqube Sigma No.3/B, 
Nexus Koramangala 3rd Block SBI Colony, 
Koramangala, Bengaluru, Karnataka
560034
              ''',
                style: TextStyle(color: footerSubTextColor),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '''
Contact Us: 080 68216821
Email: care@uni.club
              ''',
                style: TextStyle(color: footerSubTextColor),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                    text: 'Grievance Redressal Mechanism',
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline),
                  ),
                  TextSpan(
                      text: ' - SBM Bank India',
                      style: TextStyle(
                        color: Colors.white,
                      ))
                ])),
              ),
              const Divider(),
              const SizedBox(height: 30,),
              Row(children: const [
                Text('Instagram', style: TextStyle(color: Colors.white),),
                Text('LinkedIn', style: TextStyle(color: Colors.white),),
                Text('Twitter', style: TextStyle(color: Colors.white),),
                Text('Facebook', style: TextStyle(color: Colors.white),),
                Text('Careers', style: TextStyle(color: Colors.white),),
              ].map((e) => Padding(padding: const EdgeInsets.symmetric(horizontal: 8), child: e,)).toList(),),
             const Padding(
               padding: EdgeInsets.all(8.0),
               child: Text('Credit Card KFS | Credit Card T&Cs | Uni T&Cs | Lending Partner TnCs', style: TextStyle(color: Colors.white),),
             )
            ],
          ),
        ),
      ),
    );
  }
}
