import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../style.dart';
import 'home_screen.dart';

allAppBar() {
  return AppBar(
    flexibleSpace: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
            Colors.white12,
            Colors.green,
          ])),
    ),
    elevation: 5,
    title: Text(
      "Green Building",
      style: TextStyle(
          letterSpacing: 1.0,
          // color: Col,
          // foreground: Paint()..shader = linearGradient,
          fontFamily: 'Cairo-Black',
          fontWeight: FontWeight.bold,
          fontSize: 25),
    ),
    centerTitle: true,
  );
}

introAppBar() {
  return AppBar(

    // leading: BackButton(
    //   onPressed: () {
    //     Navigator.pushNamed(context, '/home');
    //   },
    // ),
    flexibleSpace: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
            Colors.white12,
            Colors.green,
          ])),
    ),
    elevation: 5,
    title: Text(
      "Risks Of Green Building".tr,
      style: StyleforText(),
    ),
    centerTitle: true,
  );
}
soluAppBar() {
  return AppBar(

    // leading: BackButton(
    //   onPressed: () {
    //     Navigator.pushNamed(context, '/home');
    //   },
    // ),
    flexibleSpace: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
            Colors.white12,
            Colors.green,
          ])),
    ),
    elevation: 5,
    title: Text(
      "Suggestions".tr,
      style: TextStyle(
          letterSpacing: 1.0,
          // color: Col,
          // foreground: Paint()..shader = linearGradient,
          fontFamily: 'Cairo-Black',
          fontWeight: FontWeight.bold,
          fontSize: 22.5),
    ),
    centerTitle: true,
  );
}
