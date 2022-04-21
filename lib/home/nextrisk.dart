import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_building/models/pdfGreen.dart';

import '../style.dart';
import 'calculation.dart';

class nextRisk extends StatefulWidget {
  final String? nextdropAreaSelectedGreen, nextdropTimeSelectedGreen, nextKind;
  final double nextAreaGreen;

  nextRisk(
      {Key? key,
      required this.nextAreaGreen,
      this.nextdropAreaSelectedGreen,
      this.nextdropTimeSelectedGreen,
      this.nextKind})
      : super(key: key);

  @override
  State<nextRisk> createState() => _LTabPageSelectorState();
}

class _LTabPageSelectorState extends State<nextRisk>
    with SingleTickerProviderStateMixin {
  final int _numDots = 7;
  late final TabController _controller;

  String _dyna = 'en';
  CalgreanArea RS = CalgreanArea();
  static List<double> lastTime = [];
  static List<double> lastCost = [];
  late String ngadrop;
  late String ngtdrop;
  late double ng;
  var ratio;

  @override
  void initState() {
    // ratio=product.green.length;

    ng = widget.nextAreaGreen;
    ngadrop = widget.nextdropAreaSelectedGreen!;
    ngtdrop = widget.nextdropTimeSelectedGreen!;
    RS = RS.fun(ng, ngadrop, ngtdrop);
    lastCost = RS.newCost;
    lastTime = RS.newTime;
    // lastRatio = RS.newRatio;
    _controller = TabController(length: _numDots, vsync: this);
    super.initState();
  }

  void _moveNext() {
    setState(() {
      (_controller.index == _numDots - 1)
          ? _controller.index = 0
          : _controller.index++;
    });
  }

  List<Widget> widgets = [

    //1:5
    Builder(builder: (BuildContext context) {

      var s = MediaQuery.of(context).size;
      String dyna = 'en';

      return Directionality(
        textDirection: dyna == 'en' ? TextDirection.ltr : TextDirection.rtl,
        child: Container(
          height: s.height * .66,
          // height: 512.0,
          child: ListView(
            children: [
              //1
              Container(
                height: s.height / 8.3,
                // height: 100.0,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "financial risk".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      // width: 70.0,
                      child: Card(
                          child: Center(
                              child: Text(
                        '79 %',
                        // '${lastRatio[0]}' == null ? '' : '${lastRatio[0]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      // width: 70.0,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[0]}' == null ? '' : '${lastCost[0]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      // width: 70.0,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[0]}' == null ? '' : '${lastTime[0]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //2
              Container(
                // height: s.height / 8,
                height: 100.0,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "Delay in schedule risk".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      // width: 70.0,

                      child: Card(
                          child: Center(
                              child: Text(
                        '80 %',

                        // '${lastRatio[1]}' == null ? '' : '${lastRatio[1]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      // width: 70.0,

                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[1]}' == null ? '' : '${lastCost[1]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      // width: 70.0,

                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[1]}' == null ? '' : '${lastTime[1]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //3
              Container(
                height: s.height / 7.5,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "Building products and materials ".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '79 %',

                        // '${lastRatio[2]}' == null ? '' : '${lastRatio[2]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[2]}' == null ? '' : '${lastCost[2]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[2]}' == null ? '' : '${lastTime[2]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //4
              Container(
                height: s.height / 7.2,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "Design guideline availability ".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '79 %',

                        // '${lastRatio[3]}' == null ? '' : '${lastRatio[3]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[3]}' == null ? '' : '${lastCost[3]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[3]}' == null ? '' : '${lastTime[3]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //5
              Container(
                height: s.height / 7.2,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "Energy saving uncertainty ".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '80 %',

                        // '${lastRatio[4]}' == null ? '' : '${lastRatio[4]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[4]}' == null ? '' : '${lastCost[4]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[4]}' == null ? '' : '${lastTime[4]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }),
    Builder(builder: (BuildContext context) {
      var s = MediaQuery.of(context).size;
      String _dyna = 'en';

      return
          // 6:10
          Directionality(
        textDirection: _dyna == 'en' ? TextDirection.ltr : TextDirection.rtl,
        child: Container(
          // height: s.height * .67,
          height: 512.0,

          child: ListView(
            children: [
              Container(
                height: s.height / 7.8,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "green building certification results ".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '80 %',

                        // '${lastRatio[5]}' == null ? '' : '${lastRatio[5]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[5]}' == null ? '' : '${lastCost[5]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[5]}' == null ? '' : '${lastTime[5]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //7
              Container(
                height: s.height / 7.7,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "Team performance risk".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '79 %',

                        // '${lastRatio[6]}' == null ? '' : '${lastRatio[6]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[6]}' == null ? '' : '${lastCost[6]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[6]}' == null ? '' : '${lastTime[6]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //8
              Container(
                height: s.height / 7.6,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "client is goal uncertainty ".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '79 %',

                        // '${lastRatio[7]}' == null ? '' : '${lastRatio[7]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[7]}' == null ? '' : '${lastCost[7]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[7]}' == null ? '' : '${lastTime[7]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //9
              Container(
                height: s.height / 7.5,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "regulatory / legislative risk".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '79 %',

                        // '${lastRatio[8]}' == null ? '' : '${lastRatio[8]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[8]}' == null ? '' : '${lastCost[8]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[8]}' == null ? '' : '${lastTime[8]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //10
              Container(
                height: s.height / 7.5,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "Design risk ".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '79 %',

                        // '${lastRatio[9]}' == null ? '' : '${lastRatio[9]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[9]}' == null ? '' : '${lastCost[9]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[9]}' == null ? '' : '${lastTime[9]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }),
    Builder(builder: (BuildContext context) {
      var s = MediaQuery.of(context).size;
      String _dyna = 'en';

      return
          //11:15
          Directionality(
        textDirection: _dyna == 'en' ? TextDirection.ltr : TextDirection.rtl,
        child: Container(
          // height: s.height * .67,
          height: 512.0,

          child: ListView(
            children: [
              //11
              Container(
                height: s.height / 7.5,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "Lack of communications".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '78 %',

                        // '${lastRatio[10]}' == null ? '' : '${lastRatio[10]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[10]}' == null ? '' : '${lastCost[10]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[10]}' == null ? '' : '${lastTime[10]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //12
              Container(
                height: s.height / 7.5,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "incomplete drawings & spaces".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '78 %',

                        // '${lastRatio[11]}' == null ? '' : '${lastRatio[11]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[11]}' == null ? '' : '${lastCost[11]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[11]}' == null ? '' : '${lastTime[11]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //13
              Container(
                height: s.height / 7.5,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "lack of contract".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '78 %',

                        // '${lastRatio[12]}' == null ? '' : '${lastRatio[12]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[12]}' == null ? '' : '${lastCost[12]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[12]}' == null ? '' : '${lastTime[12]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //14
              Container(
                height: s.height / 7.5,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "fluctuation in exchange rates ".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '77 %',

                        // '${lastRatio[13]}' == null ? '' : '${lastRatio[13]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[13]}' == null ? '' : '${lastCost[13]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[13]}' == null ? '' : '${lastTime[13]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //15
              Container(
                height: s.height / 7.3,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "complex procedures to obtain approvals ".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '78 %',

                        // '${lastRatio[14]}' == null ? '' : '${lastRatio[14]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[14]}' == null ? '' : '${lastCost[14]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[14]}' == null ? '' : '${lastTime[14]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }), //16:20
    Builder(builder: (BuildContext context) {
      var s = MediaQuery.of(context).size;
      String _dyna = 'en';

      return Directionality(
        textDirection: _dyna == 'en' ? TextDirection.ltr : TextDirection.rtl,
        child: Container(
          // height: s.height * .67,
          height: 512.0,

          child: ListView(
            children: [
              //16
              Container(
                height: s.height / 7.5,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "import / export restrictions ".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '79 %',

                        // '${lastRatio[15]}' == null ? '' : '${lastRatio[15]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[15]}' == null ? '' : '${lastCost[15]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[15]}' == null ? '' : '${lastTime[15]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //17
              Container(
                height: s.height / 7.4,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "unclear allocation of roles and responsibilities ".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '77 %',

                        // '${lastRatio[16]}' == null ? '' : '${lastRatio[16]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[16]}' == null ? '' : '${lastCost[16]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[16]}' == null ? '' : '${lastTime[16]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //18
              Container(
                height: s.height / 7.5,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "shortage of funds ".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '78 %',

                        // '${lastRatio[17]}' == null ? '' : '${lastRatio[17]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[17]}' == null ? '' : '${lastCost[17]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[17]}' == null ? '' : '${lastTime[17]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //19
              Container(
                height: s.height / 7.5,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "unclear requirements of owners ".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '79 %',

                        // '${lastRatio[18]}' == null ? '' : '${lastRatio[18]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[18]}' == null ? '' : '${lastCost[18]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[18]}' == null ? '' : '${lastTime[18]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //20
              Container(
                height: s.height / 7.4,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "inappropriate interventions of clients".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '79 %',

                        // '${lastRatio[19]}' == null ? '' : '${lastRatio[19]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[19]}' == null ? '' : '${lastCost[19]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[19]}' == null ? '' : '${lastTime[19]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
      //21:25
    }),
    Builder(builder: (BuildContext context) {
      var s = MediaQuery.of(context).size;
      String _dyna = 'en';

      return Directionality(
        textDirection: _dyna == 'en' ? TextDirection.ltr : TextDirection.rtl,
        child: Container(
          // height: s.height * .67,
          height: 512.0,

          child: ListView(
            children: [
              //21
              Container(
                height: s.height / 7.2,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "loose control over subcontractors ".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '79 %',

                        // '${lastRatio[20]}' == null ? '' : '${lastRatio[20]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[20]}' == null ? '' : '${lastCost[20]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[20]}' == null ? '' : '${lastTime[20]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //22
              Container(
                height: s.height / 7.3,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "unclear design details and specifications ".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '78 %',

                        // '${lastRatio[21]}' == null ? '' : '${lastRatio[21]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[21]}' == null ? '' : '${lastCost[21]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[21]}' == null ? '' : '${lastTime[21]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //23
              Container(
                height: s.height / 7.2,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "poor communication among projects stakeholders".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '78 %',

                        // '${lastRatio[22]}' == null ? '' : '${lastRatio[22]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[22]}' == null ? '' : '${lastCost[22]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[22]}' == null ? '' : '${lastTime[22]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //24
              Container(
                height: s.height / 7.2,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "lack of qualified professionals with proper design expertise"
                            .tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '78 %',

                        // '${lastRatio[23]}' == null ? '' : '${lastRatio[23]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[23]}' == null ? '' : '${lastCost[23]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[23]}' == null ? '' : '${lastTime[23]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //25
              Container(
                height: s.height / 7.7,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "technical issues".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '77 %',

                        // '${lastRatio[24]}' == null ? '' : '${lastRatio[24]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[24]}' == null ? '' : '${lastCost[24]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[24]}' == null ? '' : '${lastTime[24]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
      //25:30
    }),
    Builder(builder: (BuildContext context) {
      var s = MediaQuery.of(context).size;
      String _dyna = 'en';

      return Directionality(
        textDirection: _dyna == 'en' ? TextDirection.ltr : TextDirection.rtl,
        child: Container(
          // height: s.height * .67,
          height: 512.0,

          child: ListView(
            children: [
              //25
              Container(
                height: s.height / 7.3,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "unfamiliarity with green materials and construction technologies "
                            .tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '78 %',

                        // '${lastRatio[25]}' == null ? '' : '${lastRatio[25]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[25]}' == null ? '' : '${lastCost[25]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[25]}' == null ? '' : '${lastTime[25]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //26
              Container(
                height: s.height / 7.8,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "lack of experience".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '76 %',

                        // '${lastRatio[26]}' == null ? '' : '${lastRatio[26]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[26]}' == null ? '' : '${lastCost[26]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[26]}' == null ? '' : '${lastTime[26]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //27
              Container(
                height: s.height / 7.5,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "setting expectations too high ".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '78 %',

                        // '${lastRatio[27]}' == null ? '' : '${lastRatio[27]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[27]}' == null ? '' : '${lastCost[27]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[27]}' == null ? '' : '${lastTime[27]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //28
              Container(
                height: s.height / 7.6,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "unskilled workers ".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '76 %',

                        // '${lastRatio[28]}' == null ? '' : '${lastRatio[28]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[28]}' == null ? '' : '${lastCost[28]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[28]}' == null ? '' : '${lastTime[28]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //29
              Container(
                height: s.height / 7.8,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "poor design ".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '78 %',

                        // '${lastRatio[29]}' == null ? '' : '${lastRatio[29]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[29]}' == null ? '' : '${lastCost[29]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[29]}' == null ? '' : '${lastTime[29]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //30
            ],
          ),
        ),
      );
      //30:33
    }),
    Builder(builder: (BuildContext context) {
      var s = MediaQuery.of(context).size;
      String _dyna = 'en';

      return Directionality(
        textDirection: _dyna == 'en' ? TextDirection.ltr : TextDirection.rtl,
        child: Container(
          // height: s.height * .67,
          height: 512.0,

          child: ListView(
            children: [
              //31
              Container(
                height: s.height / 7.3,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "unfamiliarity with construction process".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '78 %',

                        // '${lastRatio[30]}' == null ? '' : '${lastRatio[30]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[30]}' == null ? '' : '${lastCost[30]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[30]}' == null ? '' : '${lastTime[30]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),

              //32
              Container(
                height: s.height / 7.4,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "fluctuations in labor / material rates ".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '78 %',

                        // '${lastRatio[31]}' == null ? '' : '${lastRatio[31]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[31]}' == null ? '' : '${lastCost[31]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[31]}' == null ? '' : '${lastTime[31]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),
              //33
              Container(
                height: s.height / 7.4,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                        "high target for  green mark ratting ".tr,
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 5.1,
                      child: Card(
                          child: Center(
                              child: Text(
                        '78 %',

                        // '${lastRatio[32]}' == null ? '' : '${lastRatio[32]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 4.2,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastCost[32]}' == null ? '' : '${lastCost[32]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                    Container(
                      width: s.width / 4.7,
                      child: Card(
                          child: Center(
                              child: Text(
                        '${lastTime[32]}' == null ? '' : '${lastTime[32]}',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 35.0),
                child: Container(
                  height: s.height / 5,
                  width: s.width / 4,
                  child: Pdf(
                    lstCost:lastCost,
                    lstTime:lastTime
                  ),
                ),
              )
            ],
          ),
        ),
      );
    })
  ];

  @override
  Widget build(BuildContext context) {
    print("last area for green ${widget.nextAreaGreen}");
    var area = widget.nextAreaGreen;
    return Center(
      child: Directionality(
        textDirection: _dyna == 'en' ? TextDirection.ltr : TextDirection.rtl,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widgets[_controller.index],
            TabPageSelector(controller: _controller),
            TextButton(onPressed: _moveNext, child: Text("next".tr)),
          ],
        ),
      ),
    );
  }
}
