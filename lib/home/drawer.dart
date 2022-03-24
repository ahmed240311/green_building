import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_building/home/solutions.dart';
import 'package:green_building/style.dart';

class LDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          DrawerHeader(
              child: Image.asset(
            "assets/images/5.jpg",
            fit: BoxFit.fill,
          )),
          Center(
            child: Text(
              "Green Building",
              style: styleForLabel(),
            ),
          ),

          ListTile(
            title: Text(
              'مقترحات الحل ',
              style: styleForValueLAbel(),
            ),
            leading: Icon(
              Icons.account_balance,
              color: Colors.green,
            ),
            onTap:(){
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder:
                          (BuildContext context) =>
                              Solutions()));
            }  ,
          ),
          ListTile(
            title: Text(
              'تواصل معنا ',
              style: styleForValueLAbel(),
            ),
            leading: Icon(
              Icons.contact_phone,
              color: Colors.green,
            ),
            onTap: null,
          ),     ListTile(
            title: Text(
              'تغير اللغة',
              style: styleForValueLAbel(),
            ),
            leading: Icon(
              Icons.language,
              color: Colors.green,
            ),
            onTap: null,
          ),
          ListTile(
            title: Text(
              'الخروج من البرنامج',
              style: styleForValueLAbel(),
            ),
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.green,
            ),
            onTap:  ()=> exit(0),
          )
        ],
      ),
    );
  }
}
