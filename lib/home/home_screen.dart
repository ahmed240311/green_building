import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:green_building/values/kind%20traditional.dart';
import 'package:green_building/values/kindof%20green.dart';

import '../style.dart';
import 'apppar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownValue = "Green Building";
  final _scaffold = GlobalKey<ScaffoldState>();
  final fromKey = GlobalKey<FormState>();
  bool _isLoading = false;

  TextEditingController area = new TextEditingController();
  TextEditingController cost = new TextEditingController();
  TextEditingController time = new TextEditingController();
  TextEditingController name = new TextEditingController();
  TextEditingController email = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        key: _scaffold,
        appBar: introAppBar(),
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 10.0, left: 5.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ListView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'عرض المخاطر',
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
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    'نوع المبني',
                    style: styleForValueLAbel(),
                  ),
                ),
                DropdownButton<String>(
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
                    print(dropdownValue);
                  },
                  items: <String>['Green Building', 'Traditional Building']
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
                SizedBox(
                  width: double.infinity,
                  height: 5.0,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    'اجمالى المساحة',
                    style: styleForValueLAbel(),
                  ),
                ),
                TextFormField(
                  autocorrect: false,
                  enableSuggestions: false,
                  textAlign: TextAlign.right,
                  cursorColor: Colors.grey[600],
                  keyboardType: TextInputType.number,
                  controller: area,
                  validator: RequiredValidator(errorText: 'المساحة مطلوبة'),

                  // onChanged: (value) => email = value,
                  // validator: emailValidator,
                  style: styleForValue(),
                  decoration: InputDecoration(
                    hintText: 'مساحة المبنى (م)',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12.0),
                  child: Text(
                    'التكلفة التقديرية للمشروع',
                    style: styleForValueLAbel(),
                  ),
                ),
                TextFormField(
                  autocorrect: false,
                  enableSuggestions: false,
                  textAlign: TextAlign.right,
                  cursorColor: Colors.grey[600],
                  keyboardType: TextInputType.number,
                  controller: cost,
                  //تكلفة المبنى (
                  // onChanged: (value) => email = value,
                  // validator: emailValidator,
                  style: styleForValue(),
                  decoration: InputDecoration(
                    hintText: 'تكلفة المبنى',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12.0),
                  child: Text(
                    'الوقت المحدد للمشروع',
                    style: styleForValueLAbel(),
                  ),
                ),
                TextFormField(
                  autocorrect: false,
                  enableSuggestions: false,
                  textAlign: TextAlign.right,
                  cursorColor: Colors.grey[600],
                  keyboardType: TextInputType.number,
                  controller: time,

                  // onChanged: (value) => email = value,
                  // validator: emailValidator,
                  style: styleForValue(),
                  decoration: InputDecoration(
                    hintText: 'وقت المشروع',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    'الإسم',
                    style: styleForValueLAbel(),
                  ),
                ),
                TextFormField(
                  autocorrect: false,
                  enableSuggestions: false,
                  textAlign: TextAlign.right,
                  cursorColor: Colors.grey[600],
                  keyboardType: TextInputType.name,
                  controller: name,

                  // onChanged: (value) => email = value,
                  // validator: emailValidator,
                  style: styleForValue(),
                  decoration: InputDecoration(
                    hintText: 'الإسم',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    'البريد الإلكتروني',
                    style: styleForValueLAbel(),
                  ),
                ),
                TextFormField(
                  autocorrect: false,
                  enableSuggestions: false,
                  textAlign: TextAlign.right,
                  cursorColor: Colors.grey[600],
                  keyboardType: TextInputType.emailAddress,
                  controller: email,

                  // onChanged: (value) => email = value,
                  // validator: emailValidator,
                  style: styleForValue(),
                  decoration: InputDecoration(
                    hintText: 'البريد الإلكتروني',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 23.0),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(13.5),
                      child: Container(
                        color: Colors.green,
                        child: FlatButton(
                          child: Text(
                            'عرض المخاطر',
                            style: StyleforText(),
                          ),
                          onPressed: () {
                            try {
                              if (fromKey.currentState!.validate() != null) {
                                setState(() {
                                  _isLoading = true;

                                  if (dropdownValue == 'Traditional Building' &&
                                      area.text!=null && area.text.isNotEmpty) {
                                    print('Success for traditional');

                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                KindTraditional()));
                                  } else if (dropdownValue == 'Green Building'&&
                                      area.text!=null && area.text.isNotEmpty) {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                KindGreen()));
                                  } else {
                                    print('empty data');
                                    var snackBar = SnackBar(
                                        behavior: SnackBarBehavior.floating,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.all(
                                                new Radius.circular(15))),
                                        backgroundColor: Colors.red,
                                        content: Text(
                                          'يجب ملئ جميع الحقول',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white),
                                        ));
                                    _scaffold.currentState!
                                        .showSnackBar(snackBar);
                                  }
                                });
                              }
                            } catch (e) {
                              print(e);
                              print('not sucess register');
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
* else if (fromKey.currentState!.validate() != null &&
                                  dropdownValue == 'Traditional Building') {
                                print('Success for traditional');

                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        KindTraditional()));
                              }
* */
