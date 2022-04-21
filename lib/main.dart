import 'dart:ui';

// import 'package:easy_localization/easy_localization.dart';
// import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_building/style.dart';

import 'logo_screen.dart';
import 'models/trans.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await EasyLocalization.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: TransL(),
      locale: Locale('ar'),
      fallbackLocale: Locale('ar'),
      debugShowCheckedModeBanner: false,
      title: 'Green Building',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        primarySwatch: Colors.green,
      ),
      home: LogoScreen(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => LogoScreen(),
      //   '/home': (context) => HomeScreen(),
      // },
    );
  }
}
