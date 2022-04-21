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

class Pdf extends StatelessWidget {
  final List<double> lstCost, lstTime;
  G product = G();
  Pdf({
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
                final pdf = await rootBundle.load('assets/images/green.pdf');
                await Printing.layoutPdf(
                    onLayout: (_) => pdf.buffer.asUint8List());

                // Navigator.push(
                //   context,
                //   MaterialPageRoute<dynamic>(
                //     builder: (_) => PDFViewerFromAsset(
                //       pdfAssetPath: 'assets/images/green.pdf',
                //     ),
                //   ),
                // );
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
    // final Uint8List fontData = File('fonts/Cairo-Black.ttf').readAsBytesSync();
    // final tf = pw.Font.ttf(fontData.buffer.asByteData());
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
                  pw.ListView(
                      // padding: pw.EdgeInsets.only(left: 10.0),
                      spacing: 3.59,
                      children: [
                        pw.Header(
                            text: 'Kind',
                            textStyle: pw.TextStyle(fontSize: 28.5)),
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
// to move between pages

// class PDFViewerFromAsset extends StatelessWidget {
//   PDFViewerFromAsset({required this.pdfAssetPath}) : super();
//   final String pdfAssetPath;
//   final Completer<PDFViewController> _pdfViewController =
//       Completer<PDFViewController>();
//   final StreamController<String> _pageCountController =
//       StreamController<String>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           // BackButton(
//           //   onPressed: () {
//           //     // Navigator.pushNamed(context, '/home');
//           //     Navigator.pop(context);
//           //   },
//           // )
//         ],
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height * 2.8,
//         child: PDF(
//           enableSwipe: true,
//           swipeHorizontal: true,
//           autoSpacing: false,
//           pageFling: false,
//           onPageChanged: (int current, int total) =>
//               _pageCountController.add('${current + 1} - $total'),
//           onViewCreated: (PDFViewController pdfViewController) async {
//             _pdfViewController.complete(pdfViewController);
//             final int? currentPage = await pdfViewController.getCurrentPage();
//             final int? pageCount = await pdfViewController.getPageCount();
//             _pageCountController.add('${currentPage! + 1} - $pageCount');
//           },
//         ).fromAsset(
//           pdfAssetPath,
//           errorWidget: (dynamic error) => Center(child: Text(error.toString())),
//         ),
//       ),
//       floatingActionButton: FutureBuilder<PDFViewController>(
//         future: _pdfViewController.future,
//         builder: (_, AsyncSnapshot<PDFViewController> snapshot) {
//           if (snapshot.hasData && snapshot.data != null) {
//             return Row(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 FloatingActionButton(
//                   heroTag: '-',
//                   child: const Text('-'),
//                   onPressed: () async {
//                     final PDFViewController? pdfController = snapshot.data;
//                     final int currentPage =
//                         (await pdfController!.getCurrentPage())! - 1;
//                     if (currentPage >= 0) {
//                       await pdfController.setPage(currentPage);
//                     }
//                   },
//                 ),
//                 FloatingActionButton(
//                   heroTag: '+',
//                   child: const Text('+'),
//                   onPressed: () async {
//                     final PDFViewController? pdfController = snapshot.data;
//                     final int currentPage =
//                         (await pdfController!.getCurrentPage())! + 1;
//                     final int? numberOfPages =
//                         await pdfController.getPageCount();
//                     if (numberOfPages! > currentPage) {
//                       await pdfController.setPage(currentPage);
//                     }
//                   },
//                 ),
//               ],
//             );
//           }
//           return const SizedBox();
//         },
//       ),
//     );
//   }
// }
