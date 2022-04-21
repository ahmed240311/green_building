import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_building/home/drawer.dart';
import 'package:green_building/home/nextrisk.dart';
import 'package:green_building/home/title.dart';

import '../style.dart';

class KindGreen extends StatelessWidget {
  // final _saffoldKy = GlobalKey<ScaffoldState>();
  final String? dropAreaSelected, dropTimeSelected, kindOfdropDown;
  final double areaGreen;

  KindGreen(
      {Key? key,
      required this.areaGreen,
      this.dropAreaSelected,
      this.dropTimeSelected,
      this.kindOfdropDown})
      : super(key: key);

  String _dm = 'en';

  @override
  Widget build(BuildContext context) {
  /*  print("new area for green ${this.areaGreen}");
    print("new kindOfdropDown for green ${this.kindOfdropDown}");
    print("new area for dropAreaSelected ${this.dropAreaSelected}");
    print("new area for dropTimeSelected ${this.dropTimeSelected}");*/
    return Scaffold(
      // key: _saffoldKy,
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
        elevation: 4,
        title: Text(
          "Risks Of Green Building".tr,
          style: StyleforText(),
        ),
        centerTitle: true,
      ),
      body: ListView(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 68,
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            "Green Building".tr,
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
          height: MediaQuery.of(context).size.height / 68,
        ),
        // هنا العنوان
        Directionality(
          textDirection: _dm == 'en' ? TextDirection.ltr : TextDirection.rtl,
          child: Container(
            color: Colors.green,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 14.5,
            child: PTitle(),
          ),
        ),
        // الداتا اللي تحت

        Directionality(
            textDirection: _dm == 'en' ? TextDirection.ltr : TextDirection.rtl,
            child: nextRisk(
              nextKind: this.kindOfdropDown,
              nextAreaGreen: this.areaGreen,
              // nextTimeGreen: this.timeGreen,
              nextdropAreaSelectedGreen: this.dropAreaSelected,
              nextdropTimeSelectedGreen: this.dropTimeSelected,
            )),
        // GridView.builder(
        //     physics: ClampingScrollPhysics(),
        //     primary: false,
        //     scrollDirection: Axis.vertical,
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 4,
        //       mainAxisSpacing: 10.0,
        //       crossAxisSpacing: 10.0,
        //       childAspectRatio: 0.70,
        //     ),
        //     itemBuilder: (BuildContext context, int index) {
        //       Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Expanded(
        //             child: Container(
        //               width: MediaQuery.of(context).size.width,
        //               height: MediaQuery.of(context).size.height,
        //               child: Text(_products[index].title),
        //             ),
        //           ),
        //         ],
        //       );
        //     }),
      ]),
    );
  }
}
