import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF7DEDDD);
const Color enterPhnColor = Color(0xFF7e8587);
const Color applyNowBtnColor = Color(0xFFfdef78);
const Color uniGreen = Color(0xFF5ad6c4);
const Color fourthPageSubTxtColor = Color(0xFFbfc9cc);
const Color fourthPageThreeColSubTxtColor = Color(0xFF8e9393);
const Color footerLightColor = Color(0xFF222627);
const Color footerSubTextColor = Color(0xFF8d8d95);

const String matterRegular = 'MatterMonoTRIAL-Regular';
const String matterSemiBold = 'MatterMonoTRIAL-SemiBold';
const String matterBold = 'MatterMonoTRIAL-Bold';
const String heavyBold = 'MatterMonoTRIAL-Heavy';
const String tooSmallBreakpoint = 'TOO-SMALL';
const double criticalBreakpoint = 1340.0;
const double criticalMobileBreakpoint = 382.0;

class UniTexts {
  /// First Page Texts
  static const List<String> mainTitleBlocks = [
    'NX Wave.',
    ' The next-gen credit card for those who love rewards.'
  ];
  static const List<String> subTitleBlocks = [
    '1% Cashback',
    '*',
    '5x Rewards',
    '*',
    'Zero Forex Markup'
  ];
  static const String agreementText =
      'You agree to be contacted by Uni Cards over Call, SMS, Email or WhatsApp to guide you through your application.';

  /// Second Page Texts
  static List<SpanningTextLine> secondPageBodyText = const [
    SpanningTextLine(blocks: [
      SpanningTextBlock(
          text: 'Earn 1% assured cashback ', isBold: true, color: Colors.black),
      SpanningTextBlock(
          text: 'on your spends. Get ',
          isBold: false,
          color: SpanningTextLine.textLightColor),
      SpanningTextBlock(text: '5X', isBold: true, color: Colors.black),
    ]),
    SpanningTextLine(blocks: [
      SpanningTextBlock(
          text: 'more value than cashback ', isBold: true, color: Colors.black),
      SpanningTextBlock(
          text: 'at the Uni Store. Enjoy',
          isBold: false,
          color: SpanningTextLine.textLightColor),
    ]),
    SpanningTextLine(blocks: [
      SpanningTextBlock(
          text: 'round the clock ',
          isBold: false,
          color: SpanningTextLine.textLightColor),
      SpanningTextBlock(
          text: 'Whatsapp support. ', isBold: true, color: Colors.black),
      SpanningTextBlock(
          text: 'And it\'s',
          isBold: false,
          color: SpanningTextLine.textLightColor)
    ]),
    SpanningTextLine(blocks: [
      SpanningTextBlock(
          text: 'lifetime free', isBold: true, color: Colors.black),
      SpanningTextBlock(
          text: '; no joining fee, no annual charges.',
          isBold: false,
          color: SpanningTextLine.textLightColor)
    ])
  ];

  /// Third Page Texts
  static const SpanningTextLine thirdPageBodyText0 = SpanningTextLine(blocks: [
    SpanningTextBlock(
        text: '1% assured cashback on your spends. ',
        isBold: true,
        color: Colors.black),
    SpanningTextBlock(
        text: 'The more you spend, the more you earn',
        isBold: false,
        color: SpanningTextLine.textLightColor)
  ]);
  static const String thirdPageBodySubtitle0 =
      'Not applicable on fuel purchase, rent & wallet transfers, ATM withdrawals & international transactions.';

  static const SpanningTextLine thirdPageBodyText1 = SpanningTextLine(blocks: [
    SpanningTextBlock(
        text: '5x more value than your cashback,',
        isBold: true,
        color: Colors.black),
    SpanningTextBlock(
        text: ' only at the Uni Store.',
        isBold: false,
        color: SpanningTextLine.textLightColor)
  ]);

  static const SpanningTextLine thirdPageBodyText2 = SpanningTextLine(blocks: [
    SpanningTextBlock(
        text: 'Zero Forex Markup.', isBold: true, color: Colors.black),
    SpanningTextBlock(
        text: ' Go international, without any fees.',
        isBold: false,
        color: SpanningTextLine.textLightColor)
  ]);

  static const SpanningTextLine thirdPageBodyText3 = SpanningTextLine(blocks: [
    SpanningTextBlock(text: 'Lifetime ', isBold: true, color: Colors.black),
    SpanningTextBlock(text: 'free. ', isBold: true, color: uniGreen),
    SpanningTextBlock(
        text: 'No joining fee. No annual Charges.',
        isBold: true,
        color: Colors.black)
  ]);

  static const String fourthPageBoxySubtext0 =
      '0% hassle, 100% paperless. Get your \nUni Card instantly';

  static const String fourthPageBoxySubText1 =
      'Set your own payment limits. Choose how and where you spend. Lock and unlock your card. All right from the app.';
}

class SpanningTextLine {
  static const Color textLightColor = Color(0xFF9ea7ae);
  final List<SpanningTextBlock> blocks;

  const SpanningTextLine({required this.blocks});
}

class SpanningTextBlock {
  final String text;
  final bool isBold;
  final bool isItalic;
  final Color color;

  const SpanningTextBlock(
      {required this.text,
      required this.isBold,
      this.isItalic = false,
      required this.color});

  TextStyle getTs(double? fontSize) => TextStyle(
      color: color,
      fontFamily: isBold ? matterBold : matterRegular,
      fontSize: fontSize ?? 22,
      fontWeight: isBold ? FontWeight.w700 : FontWeight.w500);
}
