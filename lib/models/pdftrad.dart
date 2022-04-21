import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../style.dart';
import 'Product.dart';
import 'openpdf.dart';

class PdfTrad extends StatelessWidget {
  final List<double> lstCost, lstTime;
  G product = G();

  PdfTrad({
    Key? key,
    required this.lstCost,
    required this.lstTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 2.2,
            child: FlatButton(
              onPressed: createPdf,
              child: Text(
                'print'.tr,
                style: styleForbtn(),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2.07,
            child: FlatButton(
              height: 1.0,
              onPressed: () async {
                final pdf = await rootBundle.load('assets/images/trad.pdf');
                await Printing.layoutPdf(
                    onLayout: (_) => pdf.buffer.asUint8List());
              },
              child: Text(
                'printMain'.tr,
                style: styleForbtn(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> createPdf() async {
    final pdf = pw.Document(deflate: zlib.encode);
    print('lstCost$lstCost');
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Align(
              alignment: pw.Alignment.center,
              child: pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceAround,
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                children: [
                  pw.ListView(spacing: 3.59, children: [
                    pw.Header(
                        text: 'Kind', textStyle: pw.TextStyle(fontSize: 28.5)),
                    pw.ListView.builder(
                      direction: pw.Axis.vertical,
                      itemCount: product.greenNames.length,
                      itemBuilder: (context, i) {
                        return pw.ListView(children: [
                          pw.Text('${product.greenNames[i]}',
                              style: pw.TextStyle(fontSize: 16.4))
                        ]);
                      },
                    ),
                  ]),
/*
              pw.ListView(children: [
                pw.Header(
                    text: 'Si (%)', textStyle: pw.TextStyle(fontSize: 27.5)),
                pw.ListView.builder(
                  direction: pw.Axis.vertical,
                  itemCount: product.greenRatio.length,
                  itemBuilder: (context, i) {
                    return pw.ListView(children: [
                      pw.Text('${product.greenRatio[i]}',
                          style: pw.TextStyle(fontSize: 17.2))
                    ]);
                  },
                ),
              ]),*/
                  pw.ListView(children: [
                    pw.Header(
                        text: 'Cost (\$)',
                        textStyle: pw.TextStyle(fontSize: 27.5)),
                    pw.ListView.builder(
                      direction: pw.Axis.vertical,
                      itemCount: lstCost.length,
                      itemBuilder: (context, i) {
                        return pw.ListView(children: [
                          pw.Text('${lstCost[i]}',
                              style: pw.TextStyle(fontSize: 17.2))
                        ]);
                      },
                    ),
                  ]),
                  pw.ListView(
                      padding: pw.EdgeInsets.only(left: 15.0),
                      children: [
                        pw.Header(
                            text: 'Time (M)',
                            textStyle: pw.TextStyle(fontSize: 27.5)),
                        pw.ListView.builder(
                          direction: pw.Axis.vertical,
                          itemCount: lstTime.length,
                          itemBuilder: (context, i) {
                            return pw.ListView(children: [
                              pw.Text('${lstTime[i]}',
                                  style: pw.TextStyle(fontSize: 17.2))
                            ]);
                          },
                        ),
                      ]),
                  pw.SizedBox(width: 10.0, height: 10.0)
                ],
              ));
        },
      ),
    );
    // final file = File('example.pdf');
    List<int> bytes = await pdf.save();
    SaveAndLunch(bytes, 'result.pdf');
  }
}
