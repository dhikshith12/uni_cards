
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:svg_flutter/svg.dart';
import 'package:uni_clone/consts.dart';

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
