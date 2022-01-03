import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class CustomHeadingButton extends StatefulWidget {
  CustomHeadingButton(this.headingText);

  late String headingText;

  @override
  _CustomHeadingButtonState createState() => _CustomHeadingButtonState();
}

class _CustomHeadingButtonState extends State<CustomHeadingButton> {
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Color(0xff8E8D8D),
      Color(0xff70706F),
//      Color(0xff2d2d2c),
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 30.0,
      fontFamily: 'Horizon',
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,
      decorationColor: Colors.grey,
    );

    return SizedBox(
      width: 250.0,
      child: AnimatedTextKit(
        animatedTexts: [
          ColorizeAnimatedText(
            widget.headingText,
            textStyle: colorizeTextStyle,
            textAlign: TextAlign.left,
            colors: colorizeColors,
          ),
        ],
        isRepeatingAnimation: true,
        onTap: () {
          print("Tap Event");
        },
      ),
    );
  }
}
