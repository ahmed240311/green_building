import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_building/values/kind%20traditional.dart';
import 'package:green_building/values/kindof%20green.dart';

import '../style.dart';
import 'drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scaffold = GlobalKey<ScaffoldState>();
  final fromKey = GlobalKey<FormState>();
  String dropdownValue = "Green Building";
  final List<String> Kind = ['Green Building', 'Traditional Building'];
  final List<String> AreaAndCost = ['مساحة المبنى', 'التكلفة التقديرية'];
  final List<String> ListGrean = <String>['6 أشهر', '12 أشهر', '24 أشهر'];
  final List<String> ListTrad = <String>['12 أشهر', '24 أشهر', '36 أشهر'];
  late String dropTimeSelected = '12 أشهر';
  late String dropAreaSelected = "مساحة المبنى";
  String _dynm = 'en';
  bool _isLoading=false;
  List<String> provinces = [];
  late String selectedProvince;

  TextEditingController area = new TextEditingController();
  // TextEditingController cost = new TextEditingController();
  TextEditingController time = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;

    return Form(
      key: fromKey,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        key: _scaffold,
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
            "Risks Of Green Building".tr,
            style: StyleforText(),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 10.0, left: 10.0),
          child: Directionality(
            textDirection:
                _dynm == 'en' ? TextDirection.ltr : TextDirection.rtl,
            child: ListView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                Align(
                  // alignment: Alignment.topRight,
                  alignment:
                      _dynm == 'en' ? Alignment.topCenter : Alignment.topCenter,

                  child: Text(
                    'showRisks'.tr,
                    style: TextStyle(
                        letterSpacing: 1.0,
                        // color: Col,
                        // foreground: Paint()..shader = linearGradient,
                        fontFamily: 'Cairo-Black',
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 29.5),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height/22.5),
                  child: Text(
                    'Kind Of Building'.tr,
                    style: styleForValueLAbel(),
                  ),
                ),
                // for kind of building
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
                  items: Kind.map<DropdownMenuItem<String>>((String value) {
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
                  height: 9.5,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Project Cost/Total Area'.tr,
                    style: styleForValueLAbel(),
                  ),
                ),

                // for cost and area
                DropdownButton<String>(
                  value: dropAreaSelected,
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
                      dropAreaSelected = newValue!;
                    });
                    print('dropAreaSelected $dropAreaSelected');
                  },
                  items: AreaAndCost.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: styleForValue(),
                      ),
                    );
                  }).toList(),
                ),


                TextFormField(
                  autocorrect: false,
                  enableSuggestions: false,
                  textAlign: TextAlign.right,
                  cursorColor: Colors.grey[600],
                  keyboardType: TextInputType.number,
                  controller: area,
                  // validator: RequiredValidator(errorText: 'المساحة مطلوبة'),

                  // onChanged: (value) => email = value,
                  // validator: emailValidator,
                  style: styleForValue(),
                  decoration: InputDecoration(
                    hintText: dropAreaSelected=='مساحة المبنى'?'area'.tr:'Cost'.tr,
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


                // drop time
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Text(
                    'Project Time'.tr,
                    style: styleForValueLAbel(),
                  ),
                ),
                // for time
                DropdownButton<String>(
                  icon: const Icon(
                    Icons.arrow_drop_down,
                  ),
                  // ignore: unnecessary_null_comparison
                  value: dropTimeSelected!=null?dropTimeSelected:dropTimeSelected='  ',
                  // hint: Text('المدة'),
                  style: const TextStyle(color: Colors.black54),
                  underline: Container(
                    height: 1.5,
                    color: Colors.green,
                  ),
                  items: dropdownValue == 'Green Building'
                      ? ListGrean.map((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          );
                        }).toList()
                      : ListTrad.map((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                  /* items: provinces.map((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),*/

                  onChanged: (String? Value) {
                    setState(() {
                      dropTimeSelected = Value!;
                    });
                    print(dropTimeSelected);
                  },
                  // onChanged: onChangedCallback(dropdownValue),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Name'.tr,
                    style: styleForValueLAbel(),
                  ),
                ),
                TextFormField(
                  autocorrect: false,
                  enableSuggestions: false,
                  textAlign: TextAlign.right,
                  cursorColor: Colors.grey[600],
                  keyboardType: TextInputType.name,
                  controller: null,

                  // onChanged: (value) => email = value,
                  // validator: emailValidator,
                  style: styleForValue(),
                  decoration: InputDecoration(
                    hintText: 'Name'.tr,
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
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Email'.tr,
                    style: styleForValueLAbel(),
                  ),
                ),
                TextFormField(
                  autocorrect: false,
                  enableSuggestions: false,
                  textAlign: TextAlign.right,
                  cursorColor: Colors.grey[600],
                  keyboardType: TextInputType.emailAddress,
                  controller: null,

                  // onChanged: (value) => email = value,
                  // validator: emailValidator,
                  style: styleForValue(),
                  decoration: InputDecoration(
                    hintText: 'Email'.tr,
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
                  padding: const EdgeInsets.only(top:30),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.5),
                      child: Container(
                        color: Colors.green,
                        child: FlatButton(
                          child: Text(
                            'showRisks'.tr,
                            style: StyleforText(),
                          ),
                          onPressed: () {
                            try {
                              if (fromKey.currentState!.validate() != null) {
                                setState(() {
                                  _isLoading = true;

                                  if (dropdownValue == 'Traditional Building' &&
                                          area.text != null &&
                                          area.text.isNotEmpty
                                      &&
                                      dropTimeSelected != null &&
                                          dropTimeSelected.isNotEmpty
                                  ) {
                                    print('Success for traditional');
                                    print('traditional area ${area.text}');
                                    // print('traditional time ${time.text}');

                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                KindTraditional(
                                                    areaTrd: double.parse(area.text),
                                                    // timeTrd: time.text,
                                                    dropAreaSelected:dropAreaSelected,
                                                    dropTimeSelected:dropTimeSelected
                                                )));
                                  } else if (dropdownValue ==
                                              'Green Building' &&
                                          area.text != null &&
                                          area.text.isNotEmpty
                                      &&

                                      dropTimeSelected!= null &&
                                          dropTimeSelected.isNotEmpty
                                  ) {
                                    print('Success for Green');
                                    print('Green area ${area.text}');
                                    // print('Green time ${time.text}');
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                KindGreen(
                                                  kindOfdropDown:dropdownValue,
                                                    areaGreen: double.parse(area.text),
                                                    // timeGreen: time.text,
                                                    dropAreaSelected:dropAreaSelected,
                                                    dropTimeSelected:dropTimeSelected

                                                )));
                                  } else {
                                    print('empty data');
                                    var snackBar = SnackBar(
                                        behavior: SnackBarBehavior.floating,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.all(
                                                new Radius.circular(15))),
                                        backgroundColor: Colors.red,
                                        content: Text(
                                          "should fill any field".tr,
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
