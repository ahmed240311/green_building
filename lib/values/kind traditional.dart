import 'package:flutter/material.dart';
import 'package:green_building/home/drawer.dart';
import 'package:green_building/home/nextrisk%20traditional.dart';
import 'package:green_building/home/title.dart';
import 'package:green_building/models/Product.dart';
import '../style.dart';

class KindTraditional extends StatelessWidget {
  // final _scafoldKe = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scafoldKe,
      drawer: LDrawer(),

      appBar: AppBar(
        actions: [
          BackButton(
            onPressed: () {
              // Navigator.pushNamed(context, '/home');
              Navigator.pop(context);
            },
          )
        ],
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
          "مخاطر المباني التقليدية",
          style: StyleforText(),
        ),
        centerTitle: true,
      ),
      body: ListView(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 65,
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            'المباني التقليدية',
            style: TextStyle(
                letterSpacing: 1.0,
                // color: Col,
                // foreground: Paint()..shader = linearGradient,
                fontFamily: 'Cairo-Black',
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 23.5),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 65,
        ),
        // هنا العنوان
        Container(
          color: Colors.green,
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 14.5,
          child:
          PTitle()
        ),
        // الداتا اللي تحت
        nextRiskTrad(),

      ]),
    );
  }
}
