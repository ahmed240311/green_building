import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
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

    return Scaffold(
      appBar: introAppBar(),
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
                  'ما هي الأبنية الخضراء ؟  ',
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
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 10.0,
              ),
              child: Text(
                'هي مبانى يتم تصميمها لتحقيق الاستدامة'
                '.وذلك استنادا إلي بعض المعايير الدولية من المؤسسات المختصة التي تقيس مدي '
                'توافق المبني مع البيئة.وهي طريقة مسئولة بيئياً وتدعم كفاءة الموارد',
                textAlign: TextAlign.right,
                style: TextStyle(
                    letterSpacing: 3.5,
                    // color: Col,
                    // foreground: Paint()..shader = linearGradient,
                    fontFamily: 'Cairo-Light',
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.9),
              ),
            ),
          ),

         // بتن لتغير اللغه
         /*  Center(child: Text('data'.tr().toString())),
          RaisedButton(
              child: Text('to english'),
              onPressed: () {
                setState(() {
                  // EasyLocalization.of(context).locale = Locale('ar', 'SA');
                  EasyLocalization.of(context).locale = Locale('en', 'US');
                });
              }),
              */


          Container(
            height: size.height * .239,
            width: double.infinity,
            child: Video(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(13.5),
                child: Container(
                  color: Colors.green,
                  child: FlatButton(
                    child: Text(
                      'معرفة المزيد',
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
