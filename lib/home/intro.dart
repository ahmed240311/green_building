// import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_building/home/apppar.dart';
import 'package:green_building/home/imagesintro.dart';
import 'package:green_building/home/video.dart';

import '../style.dart';
import 'home_screen.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
     String _dynam = 'en';
    return Scaffold(
      appBar: allAppBar(),
      body: ListView(
        children: [
          LTabPageSelector(),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 8.0,
              ),
              child: Center(
                child: Text(
                  "intro_qus".tr,
                  style: TextStyle(
                      letterSpacing: 1.0,
                      // color: Col,
                      // foreground: Paint()..shader = linearGradient,
                      fontFamily: 'Cairo-Black',
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 23.0),
                ),
              ),
            ),
          ),
          Directionality(
            textDirection:
            // TextDirection.rtl,
                _dynam == 'en' ? TextDirection.ltr : TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 10.0,
                  ),
                  child: Text(
                    "body_intro".tr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        letterSpacing: 1.3,
                        // fontFamily: 'Cairo-Regular',
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.7),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              height: size.height * .239,
              width: double.infinity,
              child: Video(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(13.5),
                child: Container(
                  color: Colors.green,
                  child: FlatButton(
                    child: Text(
                      'btnNext'.tr,
                      style: StyleforText(),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => HomeScreen()));
                    },
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
