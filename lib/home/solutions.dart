import 'dart:convert';

import 'package:flutter/material.dart';

import '../style.dart';
import 'apppar.dart';

class Solutions extends StatelessWidget {
  final _scaffdKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffdKey,
      appBar: soluAppBar(),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  "قياس تخفيف المخاطر",
                  style: styleForLabel(),
                ),
              ),
            ),
            Divider(
              endIndent: 75.0,
              indent: 75.0,
              height: 1.5,
              thickness: 1,
              color: Colors.green,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: ListTile(
                title: Card(

                  child: Center(

                    child: Text(
                      'صناديق الطوارئ في حالات الطوارئ',
                      style: styleForValueLAbel(),
                    ),
                  ),
                ),
                leading:forIcon(),
                onTap: null,
              ),
            ),
            ListTile(
              title: Card(
                child: Center(
                  child: Text(
                    'استخدم المشاريع الخضراء السابقة كمرجع',
                    textAlign:TextAlign.center ,

                    style: styleForValueLAbel(),
                  ),
                ),
              ),
              leading: forIcon(),
              onTap: null,
            ),
            ListTile(
              title: Card(
                child: Center(
                  child: Text(
                    'الاستثمار في البحث عن مواد وعمليات البناء الأخضر',
                    textAlign:TextAlign.center ,
                    style: styleForValueLAbel(),
                  ),
                ),
              ),
              leading: forIcon(),
              onTap: null,
            ),
            ListTile(
              title: Card(
                child: Center(
                  child: Text(
                    'تطوير برامج ترويجية لأعضاء الفريق',
                    textAlign:TextAlign.center ,
                    style: styleForValueLAbel(),
                  ),
                ),
              ),
              leading: forIcon(),
              onTap: null,
            ),
            ListTile(
              title: Card(
                child: Center(
                  child: Text(
                    'نظام إدارة فعال لتغييرات التصميم',
                    textAlign:TextAlign.center ,
                    style: styleForValueLAbel(),
                  ),
                ),
              ),
              leading: forIcon(),
              onTap: null,
            ),
            ListTile(
              title: Card(
                child: Center(
                  child: Text(
                    'تحسين الاتصال والتنسيق بين أصحاب المصلحة',
                    textAlign:TextAlign.center ,
                    style: styleForValueLAbel(),
                  ),
                ),
              ),
              leading: forIcon(),
              onTap: null,
            ),
            ListTile(
              title: Card(
                child: Center(
                  child: Text(
                    'فهم هدف العملاء في مشروع المباني الخضراء',
                    textAlign:TextAlign.center ,
                    style: styleForValueLAbel(),
                  ),
                ),
              ),
              leading: forIcon(),
              onTap: null,
            ),
            ListTile(
              title: Card(
                child: Center(
                  child: Text(
                    'مراقبة جودة الرسومات والمواصفات الإنشائية',
                    textAlign:TextAlign.center ,
                    style: styleForValueLAbel(),
                  ),
                ),
              ),
              leading: forIcon(),
              onTap: null,
            ),
            ListTile(
              title: Card(
                child: Center(
                  child: Text(
                    'استفد من عملية التصميم المتكاملة',
                    textAlign:TextAlign.center ,
                    style: styleForValueLAbel(),
                  ),
                ),
              ),
              leading: forIcon(),
              onTap: null,
            ),
            ListTile(
              title: Card(
                child: Center(
                  child: Text(
                    'شراء التأمين عند تخصيص المخاطر',
                    textAlign:TextAlign.center ,
                    style: styleForValueLAbel(),
                  ),
                ),
              ),
              leading: forIcon(),
              onTap: null,
            ),
            ListTile(
              title: Card(
                child: Center(
                  child: Text(
                    'الحوافز والتدابير المالية من الحكومة',
                    textAlign:TextAlign.center ,
                    style: styleForValueLAbel(),
                  ),
                ),
              ),
              leading: forIcon(),
              onTap: null,
            ),
            ListTile(
              title: Card(
                child: Center(
                  child: Text(
                    'إعلانات وبرامج لزيادة وعي المجتمع بأهمية المرافق الخضراء',
                    textAlign:TextAlign.center ,
                    style: styleForValueLAbel(),
                  ),
                ),
              ),
              leading: forIcon(),
              onTap: null,
            ),
            ListTile(
              title: Card(
                child: Center(
                  child: Text(
                    'إغراء استخدام المباني الخضراء',
                    textAlign:TextAlign.center ,
                    style: styleForValueLAbel(),
                  ),
                ),
              ),
              leading: forIcon(),
              onTap: null,
            ),
            SizedBox(
              height: size.height*.01,
            )
          ],
        ),
      ),
    );
  }
}
forIcon(){
  return Icon(
    Icons.account_balance_outlined,
    color: Colors.green,
  );
}