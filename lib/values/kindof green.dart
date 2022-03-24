import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_building/home/drawer.dart';
import 'package:green_building/home/nextrisk.dart';
import 'package:green_building/home/title.dart';
import 'package:green_building/models/Product.dart';

import '../style.dart';

class KindGreen extends StatelessWidget {
  // final _saffoldKy = GlobalKey<ScaffoldState>();

  List<Product> _products = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _saffoldKy,
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
          "مخاطر المشاريع الخضراء",
          style: StyleforText(),
        ),
        centerTitle: true,
      ),
      body: ListView(
          children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 65,
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            'المباني الخضراء',
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
          child: PTitle(),
        ),
        // الداتا اللي تحت

        nextRisk(),

        /*   //1:5

        Container(
          height: MediaQuery.of(context).size.height*.67,
          child: ListView(
            children: [
              //1
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  height: MediaQuery.of(context).size.height / 7.2,

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
                        width: MediaQuery.of(context).size.width/5,
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
                        width: MediaQuery.of(context).size.width/5,

                        child: Card(
                            child: Center(
                                child: Text(
                                  '  ',
                                  style: styleForValueLAbel(),
                                  textAlign: TextAlign.center,
                                ))),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/5,

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
                  height: MediaQuery.of(context).size.height / 7.2,

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
                        width: MediaQuery.of(context).size.width/5,
                        child: Card(
                            child: Center(
                                child: Text(
                                  ' 80 %',
                                  style: styleForValueLAbel(),
                                  textAlign: TextAlign.center,
                                ))),
                      ),
                      //هنا هنحط حاصل ضرب النسبء ف الوقت

                      Container(
                        width: MediaQuery.of(context).size.width/5,

                        child: Card(
                            child: Center(
                                child: Text(
                                  '  ',
                                  style: styleForValueLAbel(),
                                  textAlign: TextAlign.center,
                                ))),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/5,

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
                  height: MediaQuery.of(context).size.height / 7.2,

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
                        width: MediaQuery.of(context).size.width/5,
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
                        width: MediaQuery.of(context).size.width/5,

                        child: Card(
                            child: Center(
                                child: Text(
                                  '  ',
                                  style: styleForValueLAbel(),
                                  textAlign: TextAlign.center,
                                ))),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/5,

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
                  height: MediaQuery.of(context).size.height / 7.2,

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
                        width: MediaQuery.of(context).size.width/5,
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
                        width: MediaQuery.of(context).size.width/5,

                        child: Card(
                            child: Center(
                                child: Text(
                                  '  ',
                                  style: styleForValueLAbel(),
                                  textAlign: TextAlign.center,
                                ))),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/5,

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
                  height: MediaQuery.of(context).size.height / 7.2,

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
                        width: MediaQuery.of(context).size.width/5,
                        child: Card(
                            child: Center(
                                child: Text(
                                  ' 80 %',
                                  style: styleForValueLAbel(),
                                  textAlign: TextAlign.center,
                                ))),
                      ),
                      //هنا هنحط حاصل ضرب النسبء ف الوقت

                      Container(
                        width: MediaQuery.of(context).size.width/5,

                        child: Card(
                            child: Center(
                                child: Text(
                                  '  ',
                                  style: styleForValueLAbel(),
                                  textAlign: TextAlign.center,
                                ))),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/5,

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
        ),
        // 6:10
        Container(
    height: MediaQuery.of(context).size.height*.67,

    child: ListView(
      children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            height: MediaQuery.of(context).size.height / 7.2,

            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  // flex: 1,
                  child: Card(
                      child: Center(
                          child: Text(
                            'نتائج شهادة المباني الخضراء',
                            style: styleForValueLAbel(),
                            textAlign: TextAlign.center,
                          ))),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/5,
                  child: Card(
                      child: Center(
                          child: Text(
                            ' 80 %',
                            style: styleForValueLAbel(),
                            textAlign: TextAlign.center,
                          ))),
                ),
                //هنا هنحط حاصل ضرب النسبء ف الوقت

                Container(
                  width: MediaQuery.of(context).size.width/5,

                  child: Card(
                      child: Center(
                          child: Text(
                            '  ',
                            style: styleForValueLAbel(),
                            textAlign: TextAlign.center,
                          ))),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/5,

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
            height: MediaQuery.of(context).size.height / 7.2,

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
                  width: MediaQuery.of(context).size.width/5,
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
                  width: MediaQuery.of(context).size.width/5,

                  child: Card(
                      child: Center(
                          child: Text(
                            '  ',
                            style: styleForValueLAbel(),
                            textAlign: TextAlign.center,
                          ))),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/5,

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
            height: MediaQuery.of(context).size.height / 7.2,

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
                  width: MediaQuery.of(context).size.width/5,
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
                  width: MediaQuery.of(context).size.width/5,

                  child: Card(
                      child: Center(
                          child: Text(
                            '  ',
                            style: styleForValueLAbel(),
                            textAlign: TextAlign.center,
                          ))),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/5,

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
            height: MediaQuery.of(context).size.height / 7.2,

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
                  width: MediaQuery.of(context).size.width/5,
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
                  width: MediaQuery.of(context).size.width/5,

                  child: Card(
                      child: Center(
                          child: Text(
                            '  ',
                            style: styleForValueLAbel(),
                            textAlign: TextAlign.center,
                          ))),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/5,

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
            height: MediaQuery.of(context).size.height / 7.2,

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
                  width: MediaQuery.of(context).size.width/5,
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
                  width: MediaQuery.of(context).size.width/5,

                  child: Card(
                      child: Center(
                          child: Text(
                            '  ',
                            style: styleForValueLAbel(),
                            textAlign: TextAlign.center,
                          ))),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/5,

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
  ),
        //11:15
        Container(
          height: MediaQuery.of(context).size.height*.67,
          child: ListView(
         children: [
           //11
           Directionality(
             textDirection: TextDirection.rtl,
             child: Container(
               height: MediaQuery.of(context).size.height / 7.2,

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
                     width: MediaQuery.of(context).size.width/5,
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
                     width: MediaQuery.of(context).size.width/5,

                     child: Card(
                         child: Center(
                             child: Text(
                               '  ',
                               style: styleForValueLAbel(),
                               textAlign: TextAlign.center,
                             ))),
                   ),
                   Container(
                     width: MediaQuery.of(context).size.width/5,

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
               height: MediaQuery.of(context).size.height / 7.2,

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
                     width: MediaQuery.of(context).size.width/5,
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
                     width: MediaQuery.of(context).size.width/5,

                     child: Card(
                         child: Center(
                             child: Text(
                               '  ',
                               style: styleForValueLAbel(),
                               textAlign: TextAlign.center,
                             ))),
                   ),
                   Container(
                     width: MediaQuery.of(context).size.width/5,

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
               height: MediaQuery.of(context).size.height / 7.2,

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
                     width: MediaQuery.of(context).size.width/5,
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
                     width: MediaQuery.of(context).size.width/5,

                     child: Card(
                         child: Center(
                             child: Text(
                               '  ',
                               style: styleForValueLAbel(),
                               textAlign: TextAlign.center,
                             ))),
                   ),
                   Container(
                     width: MediaQuery.of(context).size.width/5,

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
               height: MediaQuery.of(context).size.height / 7.2,

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
                     width: MediaQuery.of(context).size.width/5,
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
                     width: MediaQuery.of(context).size.width/5,

                     child: Card(
                         child: Center(
                             child: Text(
                               '  ',
                               style: styleForValueLAbel(),
                               textAlign: TextAlign.center,
                             ))),
                   ),
                   Container(
                     width: MediaQuery.of(context).size.width/5,

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
               height: MediaQuery.of(context).size.height / 7.2,

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
                     width: MediaQuery.of(context).size.width/5,
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
                     width: MediaQuery.of(context).size.width/5,

                     child: Card(
                         child: Center(
                             child: Text(
                               '  ',
                               style: styleForValueLAbel(),
                               textAlign: TextAlign.center,
                             ))),
                   ),
                   Container(
                     width: MediaQuery.of(context).size.width/5,

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
        ),
        //16:20
        Container(
          height: MediaQuery.of(context).size.height*.67,
          child: ListView(
           children: [
             //16
             Directionality(
               textDirection: TextDirection.rtl,
               child: Container(
                 height: MediaQuery.of(context).size.height / 7.2,

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
                       width: MediaQuery.of(context).size.width/5,
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
                       width: MediaQuery.of(context).size.width/5,

                       child: Card(
                           child: Center(
                               child: Text(
                                 '  ',
                                 style: styleForValueLAbel(),
                                 textAlign: TextAlign.center,
                               ))),
                     ),
                     Container(
                       width: MediaQuery.of(context).size.width/5,

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
                 height: MediaQuery.of(context).size.height / 7.2,

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
                       width: MediaQuery.of(context).size.width/5,
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
                       width: MediaQuery.of(context).size.width/5,

                       child: Card(
                           child: Center(
                               child: Text(
                                 '  ',
                                 style: styleForValueLAbel(),
                                 textAlign: TextAlign.center,
                               ))),
                     ),
                     Container(
                       width: MediaQuery.of(context).size.width/5,

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
                 height: MediaQuery.of(context).size.height / 7.2,

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
                       width: MediaQuery.of(context).size.width/5,
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
                       width: MediaQuery.of(context).size.width/5,

                       child: Card(
                           child: Center(
                               child: Text(
                                 '  ',
                                 style: styleForValueLAbel(),
                                 textAlign: TextAlign.center,
                               ))),
                     ),
                     Container(
                       width: MediaQuery.of(context).size.width/5,

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
                 height: MediaQuery.of(context).size.height / 7.2,

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
                       width: MediaQuery.of(context).size.width/5,
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
                       width: MediaQuery.of(context).size.width/5,

                       child: Card(
                           child: Center(
                               child: Text(
                                 '  ',
                                 style: styleForValueLAbel(),
                                 textAlign: TextAlign.center,
                               ))),
                     ),
                     Container(
                       width: MediaQuery.of(context).size.width/5,

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
                 height: MediaQuery.of(context).size.height / 7.2,

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
                       width: MediaQuery.of(context).size.width/5,
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
                       width: MediaQuery.of(context).size.width/5,

                       child: Card(
                           child: Center(
                               child: Text(
                                 '  ',
                                 style: styleForValueLAbel(),
                                 textAlign: TextAlign.center,
                               ))),
                     ),
                     Container(
                       width: MediaQuery.of(context).size.width/5,

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
        ),
       //21:25
        Container(
  height: MediaQuery.of(context).size.height*.67,
  child: ListView(
    children: [
      //21
      Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          height: MediaQuery.of(context).size.height / 7.2,

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
                width: MediaQuery.of(context).size.width/5,
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
                width: MediaQuery.of(context).size.width/5,

                child: Card(
                    child: Center(
                        child: Text(
                          '  ',
                          style: styleForValueLAbel(),
                          textAlign: TextAlign.center,
                        ))),
              ),
              Container(
                width: MediaQuery.of(context).size.width/5,

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
          height: MediaQuery.of(context).size.height / 7.2,

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
                width: MediaQuery.of(context).size.width/5,
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
                width: MediaQuery.of(context).size.width/5,

                child: Card(
                    child: Center(
                        child: Text(
                          '  ',
                          style: styleForValueLAbel(),
                          textAlign: TextAlign.center,
                        ))),
              ),
              Container(
                width: MediaQuery.of(context).size.width/5,

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
          height: MediaQuery.of(context).size.height / 7.2,

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
                width: MediaQuery.of(context).size.width/5,
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
                width: MediaQuery.of(context).size.width/5,

                child: Card(
                    child: Center(
                        child: Text(
                          '  ',
                          style: styleForValueLAbel(),
                          textAlign: TextAlign.center,
                        ))),
              ),
              Container(
                width: MediaQuery.of(context).size.width/5,

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
          height: MediaQuery.of(context).size.height / 7.2,

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
                width: MediaQuery.of(context).size.width/5,
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
                width: MediaQuery.of(context).size.width/5,

                child: Card(
                    child: Center(
                        child: Text(
                          '  ',
                          style: styleForValueLAbel(),
                          textAlign: TextAlign.center,
                        ))),
              ),
              Container(
                width: MediaQuery.of(context).size.width/5,

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
          height: MediaQuery.of(context).size.height / 7.2,

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
                width: MediaQuery.of(context).size.width/5,
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
                width: MediaQuery.of(context).size.width/5,

                child: Card(
                    child: Center(
                        child: Text(
                          '  ',
                          style: styleForValueLAbel(),
                          textAlign: TextAlign.center,
                        ))),
              ),
              Container(
                width: MediaQuery.of(context).size.width/5,

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
),
        //25:30
        Container(
          height: MediaQuery.of(context).size.height*.67,
child: ListView(
  children: [
    //25
    Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        height: MediaQuery.of(context).size.height / 7.2,

        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              // flex: 1,
              child: Card(
                  child: Center(
                      child: Text(
                        'عدم الإلمام بالمواد الخضراء وتقنيات البناء',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
            ),
            Container(
              width: MediaQuery.of(context).size.width/5,
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
              width: MediaQuery.of(context).size.width/5,

              child: Card(
                  child: Center(
                      child: Text(
                        '  ',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
            ),
            Container(
              width: MediaQuery.of(context).size.width/5,

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
        height: MediaQuery.of(context).size.height / 7.2,

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
              width: MediaQuery.of(context).size.width/5,
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
              width: MediaQuery.of(context).size.width/5,

              child: Card(
                  child: Center(
                      child: Text(
                        '  ',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
            ),
            Container(
              width: MediaQuery.of(context).size.width/5,

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
        height: MediaQuery.of(context).size.height / 7.2,

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
              width: MediaQuery.of(context).size.width/5,
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
              width: MediaQuery.of(context).size.width/5,

              child: Card(
                  child: Center(
                      child: Text(
                        '  ',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
            ),
            Container(
              width: MediaQuery.of(context).size.width/5,

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
        height: MediaQuery.of(context).size.height / 7.2,

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
              width: MediaQuery.of(context).size.width/5,
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
              width: MediaQuery.of(context).size.width/5,

              child: Card(
                  child: Center(
                      child: Text(
                        '  ',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
            ),
            Container(
              width: MediaQuery.of(context).size.width/5,

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
        height: MediaQuery.of(context).size.height / 7.2,

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
              width: MediaQuery.of(context).size.width/5,
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
              width: MediaQuery.of(context).size.width/5,

              child: Card(
                  child: Center(
                      child: Text(
                        '  ',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
            ),
            Container(
              width: MediaQuery.of(context).size.width/5,

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
    Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        height: MediaQuery.of(context).size.height / 7.2,

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
              width: MediaQuery.of(context).size.width/5,
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
              width: MediaQuery.of(context).size.width/5,

              child: Card(
                  child: Center(
                      child: Text(
                        '  ',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
            ),
            Container(
              width: MediaQuery.of(context).size.width/5,

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
        ),
        //31:32
        Container(
          height: MediaQuery.of(context).size.height*.67,
          child: ListView(
          children: [
    //31
    Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        height: MediaQuery.of(context).size.height / 7.2,

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
              width: MediaQuery.of(context).size.width/5,
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
              width: MediaQuery.of(context).size.width/5,

              child: Card(
                  child: Center(
                      child: Text(
                        '  ',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
            ),
            Container(
              width: MediaQuery.of(context).size.width/5,

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
        height: MediaQuery.of(context).size.height / 7.2,

        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              // flex: 1,
              child: Card(
                  child: Center(
                      child: Text(
                        'هدف مرتفع للعلامة الخضراء',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
            ),
            Container(
              width: MediaQuery.of(context).size.width/5,
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
              width: MediaQuery.of(context).size.width/5,

              child: Card(
                  child: Center(
                      child: Text(
                        '  ',
                        style: styleForValueLAbel(),
                        textAlign: TextAlign.center,
                      ))),
            ),
            Container(
              width: MediaQuery.of(context).size.width/5,

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
        )

*/

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
