import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../style.dart';

class PTitle extends StatelessWidget {
  String _dym = 'ar';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: _dym == 'ar' ? TextDirection.rtl : TextDirection.ltr,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "time".tr,
            style: StyleforText(),
          ),

          Text(
            "cost".tr,
            style: StyleforText(),
          ),
          Text(
            "rate".tr,
            style: StyleforText(),
          ),
          // SizedBox(
          //   width: MediaQuery.of(context).size.width/17.5,
          // ),
          Text(
            " Kind of Danger".tr,
            style: StyleforText(),
          ),
        ],
      ),
    );
  }
}
