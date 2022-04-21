import 'package:flutter/material.dart';

const kTextColor = Color(0xFF535353);
const kTextLightColor = Color(0xFFACACAC);

StyleforText() {
  return TextStyle(
      letterSpacing: .8,
      // color: Col,
      // foreground: Paint()..shader = linearGradient,
      fontFamily: 'Cairo-Black',
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 18.05);
}

styleForLabel() {
  return TextStyle(
      letterSpacing: 1.0,
      color: Colors.green,
      // foreground: Paint()..shader = linearGradient,
      fontFamily: 'Cairo-Black',
      fontWeight: FontWeight.bold,
      fontSize: 25.5);
}

styleForbtn() {
  return TextStyle(
      letterSpacing: 1.0,
      color: Colors.green,
      // foreground: Paint()..shader = linearGradient,
      fontFamily: 'Cairo-Black',
      fontWeight: FontWeight.bold,
      fontSize: 23);
}

styleForValueLAbel() {
  return TextStyle(
    letterSpacing: .6,
    fontSize: 17.4,
    fontWeight: FontWeight.w600,
    fontFamily: 'Cairo-Light',
    color: Colors.black54,
  );
}

styleForValue() {
  return TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 14.5,
    height: 0.6,
    color: Colors.black,
    fontFamily: 'Cairo-Regular',
  );
}
