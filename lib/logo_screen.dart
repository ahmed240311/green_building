import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:page_transition/page_transition.dart';

import 'home/apppar.dart';
import 'home/home_screen.dart';
import 'home/intro.dart';

class LogoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: allAppBar(),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery
                .of(context).size.height / 2.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: AnimatedSplashScreen(
                    duration: 2920,
                    splashTransition: SplashTransition.rotationTransition,
                    pageTransitionType: PageTransitionType.rightToLeft,
                    backgroundColor: Colors.white12,
                    nextScreen: Intro(),
                    splash: CircleAvatar(
                      child: ClipRRect(

                        child: Image.asset(
                          'assets/logo/green.jpg',
                          width:73.0,
                        ),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      radius: 85.0,
                      backgroundColor: Colors.green[400],
                    ),
                  ),
                ),
                Expanded(
                  child: ScaleAnimatedTextKit(
                      onTap: () {
                        print("Tap Event");
                      },
                      text: [
                        "Green Building",
                      ],
                      textStyle: TextStyle(
                          fontSize: 32.5,
                          // ScreenUtil.instance.setSp(35.0),
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic,
                          fontFamily: "Horizon"),
                      textAlign: TextAlign.start,
                      alignment: AlignmentDirectional.topStart),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100.0
              // top: ScreenUtil.instance.setWidth(160.0)
            ),
            child: SpinKitThreeBounce(color: Colors.green[400]),
          )
        ],
      ),
    );
  }
}

