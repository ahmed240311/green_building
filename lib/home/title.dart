import 'package:flutter/material.dart';

import '../style.dart';

class PTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // textDirection: TextDirection.ltr,
        children: [

          Text(
            'التكلفة',
            style: StyleforText(),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width/40,
          ),
          Text(
            'الوقت',
            style: StyleforText(),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width/17,
          ),
          Text(
            'النسبة',
            style: StyleforText(),
          ),
          Text(
            '        نوع الخطر   ',
            style: StyleforText(),
          ),
        ],
      )
    ;
  }
}
