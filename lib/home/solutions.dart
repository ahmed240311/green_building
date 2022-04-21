import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_building/models/Product.dart';

import '../style.dart';
import 'apppar.dart';

G g = G();

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
                  "Risk mitigation".tr,
                  style: styleForLabel(),
                ),
              ),
            ),
            Divider(
              endIndent: 75.0,
              indent: 75.0,
              height: 1.5,
              thickness: 1.06,
              color: Colors.green,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                height: size.height / 1.39,
                child: ListView.builder(
                  itemCount: g.Suggestion.length,
                  itemBuilder: (context, i) {
                    return ListTile(
                      title: Card(
                        child: Center(
                          child: Text(
                            '${g.Suggestion[i]}'.tr,
                            textAlign: TextAlign.center,
                            style: styleForValueLAbel(),
                          ),
                        ),
                      ),
                      leading: forIcon(),
                      onTap: null,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

forIcon() {
  return Icon(
    Icons.account_balance_outlined,
    color: Colors.green,
  );
}
