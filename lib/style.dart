import 'package:flutter/material.dart';

const kTextColor = Color(0xFF535353);
const kTextLightColor = Color(0xFFACACAC);

StyleforText() {
  return TextStyle(
      letterSpacing: 1.0,
      // color: Col,
      // foreground: Paint()..shader = linearGradient,
      fontFamily: 'Cairo-Black',
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 19.5);
}
styleForLabel(){
  return TextStyle(
      letterSpacing: 1.0,
      color: Colors.green,
      // foreground: Paint()..shader = linearGradient,
      fontFamily: 'Cairo-Black',
      fontWeight: FontWeight.bold,
      fontSize: 26);
}

styleForValueLAbel() {
  return TextStyle(
    letterSpacing: .8,
    fontSize: 17.0,
    fontWeight: FontWeight.w600,
    fontFamily: 'Cairo-Light',
    color: Colors.black54,

  );
}

styleForValue() {
  return TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 15.0,
      height: 0.8,
      color: Colors.black,
    fontFamily: 'Cairo-Regular',

  );
}
