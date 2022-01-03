import 'package:flutter/material.dart';

MaterialColor kMyThemeColor = MaterialColor(0xff3D3D46, color);

Map<int, Color> color = {
  50: Color.fromRGBO(61, 61, 70, .1),
  100: Color.fromRGBO(61, 61, 70, .2),
  200: Color.fromRGBO(61, 61, 70, .3),
  300: Color.fromRGBO(61, 61, 70, .4),
  400: Color.fromRGBO(61, 61, 70, .5),
  500: Color.fromRGBO(61, 61, 70, 1),
  600: Color.fromRGBO(61, 61, 70, .7),
  700: Color.fromRGBO(61, 61, 70, .8),
  800: Color.fromRGBO(61, 61, 70, .9),
  900: Color.fromRGBO(61, 61, 70, .6),
};
final Shader linearGradient = LinearGradient(
  colors: <Color>[Color(0xff0f111a), Color(0xff31354b)],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

class ConstantColor {
  static Color kWhite = Color(0xff31354B);

  //0xff31354B
  static Color kRed = Color(0xffAF2D2D);
}

TextStyle customTextStyle =
    TextStyle(fontWeight: FontWeight.bold, color: Color(0xaadee0eb));
