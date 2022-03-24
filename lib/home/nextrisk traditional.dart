import 'package:flutter/material.dart';

import '../style.dart';

class nextRiskTrad extends StatefulWidget {
  @override
  State<nextRiskTrad> createState() => _LTabPageSelectorState();
}

class _LTabPageSelectorState extends State<nextRiskTrad>
    with SingleTickerProviderStateMixin {
  final int _numDots = 7;
  late final TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: _numDots, vsync: this);
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
    var s = MediaQuery
        .of(context)
        .size;
    return
      Container(
        // height: s.height * .67,
        height: 512.0,
        child: ListView(
          children: [
            //1
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: s.height / 8,
                // height: 100.0,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                                'مخاطر مالية',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      // width: 70.0,
                      child: Card(
                          child: Center(
                              child: Text(
                                ' 71 %',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 5,
                      // width: 70.0,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      // width: 70.0,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                  ],
                ),
              ),
            ),
            //2
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: s.height / 8,
                // height: 100.0,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                                'التأخير في جدول المخاطر',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                ' 75 %',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                  ],
                ),
              ),
            ),
            //3
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: s.height / 7.5,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                                'منتجات ومواد البناء',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                ' 79 %',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                  ],
                ),
              ),
            ),
            //4
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: s.height / 7.2,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                                'توافر الدليل الإرشادي للتصميم',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                ' 76 %',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                  ],
                ),
              ),
            ),
            //5
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: s.height / 7.2,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                                'عدم اليقين بشأن توفير الطاقة',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                ' 76 %',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      );
  }),
  Builder(builder: (BuildContext context) {
    var s = MediaQuery
        .of(context)
        .size;
    return
      // 6:10
      Container(
        height: s.height * .66,
        // height: 512.0,

        child: ListView(
          children: [
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: s.height / 7.8,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                                'نتائج شهادة البناء التقليدية',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                ' 77 %',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                  ],
                ),
              ),
            ),
            //7
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: s.height / 7.7,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                                'مخاطر أداء الفريق',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                ' 77 %',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                  ],
                ),
              ),
            ),
            //8
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: s.height / 7.6,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                                'العميل هو هدف عدم اليقين',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                ' 77 %',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                  ],
                ),
              ),
            ),
            //9
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: s.height / 7.5,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                                'المخاطر التنظيمية / التشريعية',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                ' 78 %',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                  ],
                ),
              ),
            ),
            //10
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: s.height / 7.5,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                                'مخاطر التصميم',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                ' 79 %',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }),
  Builder(builder: (BuildContext context) {
    var s = MediaQuery
        .of(context)
        .size;
    return
      //11:15
      Container(
        height: s.height * .66,
        // height: 512.0,

        child: ListView(
          children: [
            //11
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: s.height / 7.5,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                                'قلة الاتصالات',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                ' 77 %',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                  ],
                ),
              ),
            ),
            //12
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: s.height / 7.5,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                                'رسومات ومساحات غير مكتملة',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                ' 77 %',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                  ],
                ),
              ),
            ),
            //13
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: s.height / 7.5,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                                'عدم وجود عقد',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                ' 75 %',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                  ],
                ),
              ),
            ),
            //14
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: s.height / 7.5,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                                'تقلب في أسعار الصرف',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                ' 78 %',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                  ],
                ),
              ),
            ),
            //15
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                height: s.height / 7.3,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Card(
                          child: Center(
                              child: Text(
                                'إجراءات معقدة للحصول على الموافقات',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                ' 74 %',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    //هنا هنحط حاصل ضرب النسبء ف الوقت

                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                    Container(
                      width: s.width / 5,
                      child: Card(
                          child: Center(
                              child: Text(
                                '  ',
                                style: styleForValueLAbel(),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }),
    Builder(builder: (BuildContext context){
      var s =MediaQuery.of(context).size;
      return
    //16:20
    Container(
      height: s.height * .66,
      // height: 512.0,

      child: ListView(
        children: [
          //16
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              height: s.height / 7.5,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    // flex: 1,
                    child: Card(
                        child: Center(
                            child: Text(
                              'قيود الاستيراد / التصدير',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              ' 77 %',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  //هنا هنحط حاصل ضرب النسبء ف الوقت

                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                ],
              ),
            ),
          ),
          //17
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              height: s.height / 7.4,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    // flex: 1,
                    child: Card(
                        child: Center(
                            child: Text(
                              'التوزيع غير الواضح للأدوار والمسؤوليات',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              ' 72 %',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  //هنا هنحط حاصل ضرب النسبء ف الوقت

                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                ],
              ),
            ),
          ),
          //18
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              height: s.height / 7.6,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    // flex: 1,
                    child: Card(
                        child: Center(
                            child: Text(
                              'نقص الأموال',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              ' 75 %',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  //هنا هنحط حاصل ضرب النسبء ف الوقت

                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                ],
              ),
            ),
          ),
          //19
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              height: s.height / 7.5,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    // flex: 1,
                    child: Card(
                        child: Center(
                            child: Text(
                              'متطلبات غير واضحة للمالكين',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              ' 75 %',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  //هنا هنحط حاصل ضرب النسبء ف الوقت

                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                ],
              ),
            ),
          ),
          //20
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              height: s.height / 7.4,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    // flex: 1,
                    child: Card(
                        child: Center(
                            child: Text(
                              'التدخلات غير الملائمة للعملاء',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              ' 74 %',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  //هنا هنحط حاصل ضرب النسبء ف الوقت

                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
}),
    Builder(builder: (BuildContext context){
      var s =MediaQuery.of(context).size;
      return
    //21:25
    Container(
      height: s.height * .66,
      // height: 512.0,

      child: ListView(
        children: [
          //21
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              height: s.height / 7.2,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    // flex: 1,
                    child: Card(
                        child: Center(
                            child: Text(
                              'سيطرة فضفاضة على المقاولين من الباطن',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              ' 75 %',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  //هنا هنحط حاصل ضرب النسبء ف الوقت

                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                ],
              ),
            ),
          ),
          //22
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              height: s.height / 7.3,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    // flex: 1,
                    child: Card(
                        child: Center(
                            child: Text(
                              'تفاصيل و تصاميم غير واضحة',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              ' 78 %',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  //هنا هنحط حاصل ضرب النسبء ف الوقت

                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                ],
              ),
            ),
          ),
          //23
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              height: s.height / 7.2,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    // flex: 1,
                    child: Card(
                        child: Center(
                            child: Text(
                              'ضعف التواصل بين أصحاب المصلحة في المشاريع',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              ' 76 %',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  //هنا هنحط حاصل ضرب النسبء ف الوقت

                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                ],
              ),
            ),
          ),
          //24
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              height: s.height / 7.2,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    // flex: 1,
                    child: Card(
                        child: Center(
                            child: Text(
                              'نقص المهنيين المؤهلين ذوي الخبرة المناسبة للتصميم',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              ' 76 %',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  //هنا هنحط حاصل ضرب النسبء ف الوقت

                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                ],
              ),
            ),
          ),
          //25
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              height: s.height / 7.9,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    // flex: 1,
                    child: Card(
                        child: Center(
                            child: Text(
                              'مشكلة تقنية',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              ' 73 %',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  //هنا هنحط حاصل ضرب النسبء ف الوقت

                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );}),
    //25:30
  Builder(builder: (BuildContext context){
  var s =MediaQuery.of(context).size;
  return
    Container(
      height: s.height * .66,
      // height: 512.0,

      child: ListView(
        children: [
          //25
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              height: s.height / 7.3,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    // flex: 1,
                    child: Card(
                        child: Center(
                            child: Text(
                              'عدم الإلمام بالمواد التقليدية وتقنيات البناء',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              ' 78 %',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  //هنا هنحط حاصل ضرب النسبء ف الوقت

                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                ],
              ),
            ),
          ),
          //26
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              height: s.height / 7.8,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    // flex: 1,
                    child: Card(
                        child: Center(
                            child: Text(
                              'نقص الخبرة',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              ' 77 %',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  //هنا هنحط حاصل ضرب النسبء ف الوقت

                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                ],
              ),
            ),
          ),
          //27
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              height: s.height / 7.5,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    // flex: 1,
                    child: Card(
                        child: Center(
                            child: Text(
                              'وضع توقعات عالية للغاية',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              ' 77 %',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  //هنا هنحط حاصل ضرب النسبء ف الوقت

                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                ],
              ),
            ),
          ),
          //28
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              height: s.height / 7.6,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    // flex: 1,
                    child: Card(
                        child: Center(
                            child: Text(
                              'العمال غير المهرة',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              ' 79 %',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  //هنا هنحط حاصل ضرب النسبء ف الوقت

                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                ],
              ),
            ),
          ),
          //29
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              height: s.height / 7.8,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    // flex: 1,
                    child: Card(
                        child: Center(
                            child: Text(
                              'تصميم رديء',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              ' 77 %',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  //هنا هنحط حاصل ضرب النسبء ف الوقت

                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                ],
              ),
            ),
          ),
          //30
        ],
      ),
    );
  }),
    //31:33
  Builder(builder: (BuildContext context){
  var s =MediaQuery.of(context).size;
  return
    Container(
      height: s.height * .66,
      // height: 512.0,

      child: ListView(
        children: [
          //31
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              height: s.height / 7.3,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    // flex: 1,
                    child: Card(
                        child: Center(
                            child: Text(
                              'عدم الإلمام بعملية البناء',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              ' 76 %',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  //هنا هنحط حاصل ضرب النسبء ف الوقت

                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                ],
              ),
            ),
          ),

          //32
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              height: s.height / 7.4,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    // flex: 1,
                    child: Card(
                        child: Center(
                            child: Text(
                              'تقلبات في معدلات العمالة / المواد',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              ' 78 %',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  //هنا هنحط حاصل ضرب النسبء ف الوقت

                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                ],
              ),
            ),
          ),
          //33
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              height: s.height / 7.4,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    // flex: 1,
                    child: Card(
                        child: Center(
                            child: Text(
                              'هدف مرتفع للعلامة التقليدية',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              ' 78 %',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  //هنا هنحط حاصل ضرب النسبء ف الوقت

                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Container(
                    width: s.width / 5,
                    child: Card(
                        child: Center(
                            child: Text(
                              '  ',
                              style: styleForValueLAbel(),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );})


  ];

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widgets[_controller.index],
          TabPageSelector(controller: _controller),
          TextButton(onPressed: _moveNext, child: Text("التالى")),
        ],
      ),
    );
  }
}
