import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import 'package:green_building/style.dart';
import 'dart:ui';

import 'home/home_screen.dart';
import 'logo_screen.dart';

void main() {
  runApp(EasyLocalization(
      child: MyApp(),
      saveLocale: true,
      supportedLocales: [
        Locale('en', 'US'),
        Locale('ar', 'SA'),
      ],
      path: "translations",
      fallbackLocale:  Locale('ar', 'SA'),

      assetLoader: JsonAssetLoader()


  )
  );
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 void changeLocal(Locale locale){
  setState(() {
    context.locale = locale;
  });
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Green Building',

      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        primarySwatch: Colors.green,
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      initialRoute: '/',
      routes:{
        '/': (context) => LogoScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
