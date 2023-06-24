import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007e = fromHex('#7e000000');

  static Color deepOrange90019 = fromHex('#19c33f15');

  static Color black9003f = fromHex('#3f000000');

  static Color pink90066 = fromHex('#667f1d1d');

  static Color black90087 = fromHex('#87000000');

  static Color black90007 = fromHex('#07000000');

  static Color deepOrange1003f = fromHex('#3ff6bdbd');

  static Color gray600 = fromHex('#875f5f');

  static Color gray400 = fromHex('#bcb3b3');

  static Color blueGray100 = fromHex('#d3d2ca');

  static Color red90028 = fromHex('#28a01011');

  static Color black9000f = fromHex('#0f000000');

  static Color red2002d = fromHex('#2dfe9d9d');

  static Color gray200 = fromHex('#ebeaea');

  static Color blueGray509f = fromHex('#9ff1f1f1');

  static Color gray40001 = fromHex('#ccc3c3');

  static Color gray40002 = fromHex('#c4c4c4');

  static Color gray10001 = fromHex('#f6f6f9');

  static Color black90051 = fromHex('#51000000');

  static Color black90019 = fromHex('#19000000');

  static Color blueGray40002 = fromHex('#888888');

  static Color blueGray40001 = fromHex('#8e8a8a');

  static Color whiteA700 = fromHex('#ffffff');

  static Color deepOrange50 = fromHex('#f7e9e9');

  static Color red900 = fromHex('#830f0f');

  static Color blueGray10001 = fromHex('#d4d2cb');

  static Color black9001c = fromHex('#1c000000');

  static Color red90077 = fromHex('#77a01011');

  static Color gray50 = fromHex('#f6f9f9');

  static Color black900 = fromHex('#000000');

  static Color gray900A0 = fromHex('#a01c1414');

  static Color gray50001 = fromHex('#ab9797');

  static Color blueGray1003d = fromHex('#3dd9d9d9');

  static Color red90005 = fromHex('#9f1010');

  static Color gray700 = fromHex('#5c5858');

  static Color red90004 = fromHex('#c71818');

  static Color red90007 = fromHex('#bd1818');

  static Color gray500 = fromHex('#a4a4a4');

  static Color red90006 = fromHex('#a70f0f');

  static Color gray60001 = fromHex('#848484');

  static Color blueGray400 = fromHex('#8d8a8a');

  static Color amber400 = fromHex('#fcd81b');

  static Color red90008 = fromHex('#a01818');

  static Color red90001 = fromHex('#a01111');

  static Color red90003 = fromHex('#be1919');

  static Color gray100 = fromHex('#f6f8f8');

  static Color red90002 = fromHex('#c71717');

  static Color red900A8 = fromHex('#a8a01011');

  static Color black90033 = fromHex('#33000000');

  static Color red200Ba = fromHex('#bafe9d9d');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
