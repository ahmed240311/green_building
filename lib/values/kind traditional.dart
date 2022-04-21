import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_building/home/drawer.dart';
import 'package:green_building/home/nextrisk%20traditional.dart';
import 'package:green_building/home/title.dart';

import '../style.dart';

class KindTraditional extends StatelessWidget {
  final String ?dropAreaSelected,dropTimeSelected;
final double areaTrd;
   KindTraditional(
      {Key? key,  required this.areaTrd,  this.dropAreaSelected, this.dropTimeSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
 /*   print("new area for traditional ${this.areaTrd}");
    print("new area for dropAreaSelected ${this.dropAreaSelected}");
    print("new area for dropTimeSelected ${this.dropTimeSelected}");*/

    return Scaffold(
      drawer: LDrawer(),
      appBar: AppBar(
        actions: [
          BackButton(
            onPressed: () {
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
          "Risks Of Traditional Building".tr,
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
            "Traditional Building".tr,

            style: TextStyle(
                letterSpacing: 1.0,
                fontFamily: 'Cairo-Black',
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 22.0),
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
            child: PTitle()),
        // الداتا اللي تحت

        nextRiskTrad(
          nextAreaTrad:this.areaTrd,
          // nextTimeTrad:this.timeTrd,
          nextdropAreaSelectedTrad:this.dropAreaSelected,
          nextdropTimeSelectedTrad:this.dropTimeSelected,

        ),
      ]),
    );
  }
}
