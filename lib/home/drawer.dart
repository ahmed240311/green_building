import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_building/home/solutions.dart';
import 'package:green_building/models/Product.dart';
import 'package:green_building/style.dart';
import 'package:url_launcher/url_launcher.dart';

class LDrawer extends StatefulWidget {
  @override
  _LDrawerState createState() => _LDrawerState();
}

class _LDrawerState extends State<LDrawer> {
  String dropdownValue = "اللغة العربية";
  String checkEn = "en";
  String checkAr = "اللغة العربية";

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
              'Suggestions'.tr,
              style: styleForValueLAbel(),
            ),
            leading: Icon(
              Icons.account_balance,
              color: Colors.green,
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Solutions()));
            },
          ),
          ListTile(
            title: Text(
              'Contact_Us'.tr,
              style: styleForValueLAbel(),
            ),
            leading: Icon(
              Icons.contact_phone,
              color: Colors.green,
            ),
            onTap: (){
              whatsAppOpen();
            }
          ),
          ListTile(
            title: DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(
                Icons.arrow_drop_down,
              ),
              elevation: 8,
              style: const TextStyle(color: Colors.black54),
              underline: Container(
                height: 1.5,
                color: Colors.green,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
                if (dropdownValue == checkAr) {
                  Get.updateLocale(Locale("ar"));
                } else
                  Get.updateLocale(Locale("en"));

                print(dropdownValue);
              },
              items: <String>['English Language', 'اللغة العربية']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: styleForValue(),
                  ),
                );
              }).toList(),
            ),
            leading: Icon(
              Icons.language,
              color: Colors.green,
            ),
            onTap: null,
          ),
          ListTile(
            title: Text(
              'Exit'.tr,
              style: styleForValueLAbel(),
            ),
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.green,
            ),
            onTap: () => exit(0),
          )
        ],
      ),
    );
  }
  void whatsAppOpen()async {
    await canLaunch(whatsappUrl)
        ? launch(whatsappUrl)
        : Scaffold.of(context).showSnackBar(new SnackBar(
      backgroundColor: Colors.green,
      content: new Text(
        'يرجي تنصيب واتساب',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.orange,fontSize: 19.5),
      ),
    ));
  }
}
