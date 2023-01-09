import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'globals.dart';

class mypdf extends StatefulWidget {
  const mypdf({Key? key}) : super(key: key);

  @override
  State<mypdf> createState() => _mypdfState();
}

class _mypdfState extends State<mypdf> {
  final pf = pw.Document();
  final myImage = pw.MemoryImage(
    File(Globals.profile!.path).readAsBytesSync(),
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final pf = pw.Document();

    pf.addPage(
      pw.Page(
          pageFormat: PdfPageFormat.a4,
          build: (pw.Context context) => pw.Column(
                children: [
                  pw.Container(
                    height: 120,
                    width: 120,
                    decoration: pw.BoxDecoration(
                      color: PdfColors.blue,
                      border: pw.Border.all(
                        color: PdfColors.white,
                        width: 5,
                      ),
                      image: pw.DecorationImage(
                        image: myImage,
                        fit: pw.BoxFit.cover,
                      ),
                    ),
                  ),
                  pw.Container(
                    margin: const pw.EdgeInsets.all(10),
                    child: pw.Container(
                      height: 100,
                      width: 500,
                      decoration: pw.BoxDecoration(
                        color: PdfColors.white,
                        border: pw.Border.all(color: PdfColors.grey, width: 3),
                      ),
                      child: pw.Align(
                          child: pw.Text(
                        "${Globals.name}",
                        style: pw.TextStyle(
                          fontSize: 40,
                          color: PdfColors.blueAccent,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      )),
                    ),
                  ),
                  pw.Expanded(
                    flex: 1,
                    child: pw.Container(
                      margin: pw.EdgeInsets.all(10),
                      child: pw.Container(
                        width: 500,
                        height: 50,
                        color: PdfColors.blue,
                        alignment: pw.Alignment.center,
                        child: pw.Text(
                          "${Globals.desg}",
                          style: pw.TextStyle(
                            fontSize: 25,
                            color: PdfColors.white,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  pw.Expanded(
                    flex: 2,
                    child: pw.Container(
                      margin: pw.EdgeInsets.all(10),
                      child: pw.Container(
                        height: 100,
                        width: 500,
                        decoration: pw.BoxDecoration(
                          color: PdfColors.white,
                          border:
                              pw.Border.all(color: PdfColors.grey, width: 3),
                        ),
                        child: pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.center,
                          children: [
                            pw.Row(
                              mainAxisAlignment: pw.MainAxisAlignment.center,
                              crossAxisAlignment: pw.CrossAxisAlignment.center,
                              children: [
                                // pw.Image(image: AssetImage('asset/myimages/phone.png'),)

                                pw.Padding(padding: pw.EdgeInsets.all(5)),
                                pw.Text(
                                  "(+91) ${Globals.phoneno}",
                                  style: pw.TextStyle(
                                      fontSize: 12,
                                      color: PdfColors.black,
                                      fontWeight: pw.FontWeight.bold),
                                ),

                                pw.Padding(padding: pw.EdgeInsets.all(5)),
                                pw.Text(
                                  "${Globals.email}",
                                  style: pw.TextStyle(
                                      fontSize: 13,
                                      color: PdfColors.black,
                                      fontWeight: pw.FontWeight.bold),
                                )
                              ],
                            ),
                            pw.Padding(padding: pw.EdgeInsets.all(5)),
                            pw.Row(
                              mainAxisAlignment: pw.MainAxisAlignment.center,
                              crossAxisAlignment: pw.CrossAxisAlignment.center,
                              children: [
                                pw.Text(
                                  "${Globals.add1},${Globals.add2} ${Globals.add3}",
                                  style: pw.TextStyle(
                                      fontSize: 12,
                                      color: PdfColors.black,
                                      fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Padding(padding: pw.EdgeInsets.all(5)),
                                pw.Text(
                                  "${Globals.Nation}",
                                  style: pw.TextStyle(
                                      fontSize: 13,
                                      color: PdfColors.black,
                                      fontWeight: pw.FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pw.Expanded(
                    flex: 3,
                    child: pw.Container(
                      margin: pw.EdgeInsets.all(10),
                      child: pw.Container(
                        height: 300,
                        width: 500,
                        decoration: pw.BoxDecoration(
                          color: PdfColors.white,
                          border:
                              pw.Border.all(color: PdfColors.grey, width: 3),
                        ),
                        child: pw.Row(
                          children: [
                            pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Container(
                                  margin: pw.EdgeInsets.all(5),
                                  child: pw.Container(
                                    height: 40,
                                    width: 120,
                                    color: PdfColors.blue,
                                    alignment: pw.Alignment.center,
                                    child: pw.Text(
                                      "Professional Profile",
                                      style: pw.TextStyle(
                                        fontSize: 12,
                                        color: PdfColors.white,
                                        fontWeight: pw.FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                pw.Text(
                                  "   ProjectName : ${Globals.protitle}",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      color: PdfColors.black,
                                      fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Padding(padding: pw.EdgeInsets.all(2)),
                                (Globals.C == true)
                                    ? pw.Text(
                                        "   C : ✅",
                                        style: pw.TextStyle(
                                            fontSize: 14,
                                            color: PdfColors.black,
                                            fontWeight: pw.FontWeight.bold),
                                      )
                                    : pw.Text(
                                        "   C : ❌",
                                        style: pw.TextStyle(
                                            fontSize: 14,
                                            color: PdfColors.black,
                                            fontWeight: pw.FontWeight.bold),
                                      ),
                                pw.Padding(padding: pw.EdgeInsets.all(2)),
                                (Globals.Cplus == true)
                                    ? pw.Text(
                                        "   C++ : ✅",
                                        style: pw.TextStyle(
                                            fontSize: 14,
                                            color: PdfColors.black,
                                            fontWeight: pw.FontWeight.bold),
                                      )
                                    : pw.Text(
                                        "   Cplus : ❌",
                                        style: pw.TextStyle(
                                            fontSize: 14,
                                            color: PdfColors.black,
                                            fontWeight: pw.FontWeight.bold),
                                      ),
                                pw.Padding(padding: pw.EdgeInsets.all(2)),
                                (Globals.Flutter == true)
                                    ? pw.Text(
                                        "   Flutter : ✅",
                                        style: pw.TextStyle(
                                            fontSize: 14,
                                            color: PdfColors.black,
                                            fontWeight: pw.FontWeight.bold),
                                      )
                                    : pw.Text(
                                        "   Flutter : ❌",
                                        style: pw.TextStyle(
                                            fontSize: 14,
                                            color: PdfColors.black,
                                            fontWeight: pw.FontWeight.bold),
                                      ),
                                pw.Padding(padding: pw.EdgeInsets.all(2)),
                                pw.Text(
                                  "   Roles : ${Globals.jobrole}",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      color: PdfColors.black,
                                      fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Padding(padding: pw.EdgeInsets.all(2)),
                                pw.Text(
                                  "   Technologies : ${Globals.technologies}",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      color: PdfColors.black,
                                      fontWeight: pw.FontWeight.bold),
                                ),
                              ],
                            ),
                            pw.Padding(padding: pw.EdgeInsets.all(7)),
                            pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Container(
                                  margin: pw.EdgeInsets.all(5),
                                  child: pw.Container(
                                    height: 40,
                                    width: 120,
                                    color: PdfColors.blue,
                                    alignment: pw.Alignment.center,
                                    child: pw.Text(
                                      "Education",
                                      style: pw.TextStyle(
                                        fontSize: 12,
                                        color: PdfColors.white,
                                        fontWeight: pw.FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                pw.Text(
                                  "   ${Globals.passingyear}",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      color: PdfColors.black,
                                      fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Padding(padding: pw.EdgeInsets.all(2)),
                                pw.Text(
                                  "   ${Globals.collage}",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      color: PdfColors.black,
                                      fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Padding(padding: pw.EdgeInsets.all(2)),
                                pw.Text(
                                  "   Course : ${Globals.course}",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      color: PdfColors.black,
                                      fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Padding(padding: pw.EdgeInsets.all(2)),
                                pw.Text(
                                  "   CGPA : ${Globals.per}",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      color: PdfColors.black,
                                      fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Padding(padding: pw.EdgeInsets.all(2)),
                                pw.Text(
                                  "   Description : ${Globals.proDescription}",
                                  style: pw.TextStyle(
                                      fontSize: 14,
                                      color: PdfColors.black,
                                      fontWeight: pw.FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pw.Expanded(
                    flex: 3,
                    child: pw.Container(
                      margin: pw.EdgeInsets.all(10),
                      child: pw.Container(
                        height: 300,
                        width: 500,
                        decoration: pw.BoxDecoration(
                          color: PdfColors.white,
                          border:
                              pw.Border.all(color: PdfColors.grey, width: 3),
                        ),
                        child: pw.Row(
                          children: [
                            pw.Column(
                              mainAxisAlignment: pw.MainAxisAlignment.center,
                              crossAxisAlignment: pw.CrossAxisAlignment.center,
                              children: [
                                pw.Row(
                                  children: [
                                    pw.Column(
                                      children: [
                                        pw.Container(
                                          margin: pw.EdgeInsets.all(5),
                                          child: pw.Container(
                                            height: 40,
                                            width: 180,
                                            color: PdfColors.blue,
                                            alignment: pw.Alignment.center,
                                            child: pw.Text(
                                              "Professional Experience",
                                              style: pw.TextStyle(
                                                fontSize: 12,
                                                color: PdfColors.white,
                                                fontWeight: pw.FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        pw.Row(
                                          children: [
                                            pw.Padding(
                                                padding: pw.EdgeInsets.all(5)),
                                            pw.Container(
                                              margin: pw.EdgeInsets.all(5),
                                              child: pw.Container(
                                                height: 30,
                                                width: 120,
                                                decoration: pw.BoxDecoration(
                                                  color: PdfColors.white,
                                                  border: pw.Border.all(
                                                      color: PdfColors.grey,
                                                      width: 2),
                                                  borderRadius:
                                                      pw.BorderRadius.circular(
                                                          10),
                                                ),
                                                alignment: pw.Alignment.center,
                                                child: pw.Text(
                                                  "Company Name",
                                                  style: pw.TextStyle(
                                                    fontSize: 12,
                                                    color: PdfColors.grey,
                                                    fontWeight:
                                                        pw.FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            pw.Padding(
                                                padding: pw.EdgeInsets.all(2)),
                                            pw.Text(
                                              "   ${Globals.company}",
                                              style: pw.TextStyle(
                                                  fontSize: 17,
                                                  color: PdfColors.black,
                                                  fontWeight:
                                                      pw.FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        pw.Row(
                                          crossAxisAlignment:
                                              pw.CrossAxisAlignment.center,
                                          children: [
                                            pw.Padding(
                                                padding: pw.EdgeInsets.all(5)),
                                            pw.Container(
                                              margin: pw.EdgeInsets.all(5),
                                              child: pw.Container(
                                                height: 30,
                                                width: 120,
                                                decoration: pw.BoxDecoration(
                                                  color: PdfColors.white,
                                                  border: pw.Border.all(
                                                      color: PdfColors.grey,
                                                      width: 2),
                                                  borderRadius:
                                                      pw.BorderRadius.circular(
                                                          10),
                                                ),
                                                alignment: pw.Alignment.center,
                                                child: pw.Text(
                                                  "Designation",
                                                  style: pw.TextStyle(
                                                    fontSize: 12,
                                                    color: PdfColors.grey,
                                                    fontWeight:
                                                        pw.FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            pw.Padding(
                                                padding: pw.EdgeInsets.all(2)),
                                            pw.Align(
                                              child: pw.Text(
                                                "   ${Globals.role}  \n   ${Globals.comptype}",
                                                style: pw.TextStyle(
                                                    fontSize: 17,
                                                    color: PdfColors.black,
                                                    fontWeight:
                                                        pw.FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                        pw.Row(
                                          crossAxisAlignment:
                                              pw.CrossAxisAlignment.center,
                                          children: [
                                            pw.Padding(
                                                padding: pw.EdgeInsets.all(5)),
                                            pw.Container(
                                              margin: pw.EdgeInsets.all(5),
                                              child: pw.Container(
                                                height: 30,
                                                width: 120,
                                                decoration: pw.BoxDecoration(
                                                  color: PdfColors.white,
                                                  border: pw.Border.all(
                                                      color: PdfColors.grey,
                                                      width: 2),
                                                  borderRadius:
                                                      pw.BorderRadius.circular(
                                                          10),
                                                ),
                                                alignment: pw.Alignment.center,
                                                child: pw.Text(
                                                  "Status",
                                                  style: pw.TextStyle(
                                                    fontSize: 12,
                                                    color: PdfColors.grey,
                                                    fontWeight:
                                                        pw.FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            pw.Padding(
                                                padding: pw.EdgeInsets.all(2)),
                                            (Globals.pe ==
                                                    "Previously Employed")
                                                ? pw.Text(
                                                    "   ${Globals.datejoin1}   ${Globals.dateexit}",
                                                    style: pw.TextStyle(
                                                        fontSize: 17,
                                                        color: PdfColors.black,
                                                        fontWeight:
                                                            pw.FontWeight.bold),
                                                  )
                                                : pw.Text(
                                                    "   ${Globals.datejoin2}",
                                                    style: pw.TextStyle(
                                                        fontSize: 17,
                                                        color: PdfColors.black,
                                                        fontWeight:
                                                            pw.FontWeight.bold),
                                                  ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            pw.Column(
                              mainAxisAlignment: pw.MainAxisAlignment.center,
                              crossAxisAlignment: pw.CrossAxisAlignment.center,
                              children: [
                                pw.Row(
                                  children: [
                                    pw.Column(
                                      children: [
                                        pw.Container(
                                          margin: pw.EdgeInsets.all(5),
                                          child: pw.Container(
                                            height: 40,
                                            width: 120,
                                            color: PdfColors.blue,
                                            alignment: pw.Alignment.center,
                                            child: pw.Text(
                                              "Referance",
                                              style: pw.TextStyle(
                                                fontSize: 12,
                                                color: PdfColors.white,
                                                fontWeight: pw.FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        pw.Row(
                                          children: [
                                            pw.Padding(
                                                padding: pw.EdgeInsets.all(5)),
                                            pw.Container(
                                              margin: pw.EdgeInsets.all(5),
                                              child: pw.Container(
                                                height: 30,
                                                width: 80,
                                                decoration: pw.BoxDecoration(
                                                  color: PdfColors.white,
                                                  border: pw.Border.all(
                                                      color: PdfColors.grey,
                                                      width: 2),
                                                  borderRadius:
                                                      pw.BorderRadius.circular(
                                                          10),
                                                ),
                                                alignment: pw.Alignment.center,
                                                child: pw.Text(
                                                  "Ref Name",
                                                  style: pw.TextStyle(
                                                    fontSize: 12,
                                                    color: PdfColors.grey,
                                                    fontWeight:
                                                        pw.FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            pw.Padding(
                                                padding: pw.EdgeInsets.all(2)),
                                            pw.Text(
                                              "   ${Globals.refname}",
                                              style: pw.TextStyle(
                                                  fontSize: 17,
                                                  color: PdfColors.black,
                                                  fontWeight:
                                                      pw.FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        pw.Row(
                                          crossAxisAlignment:
                                              pw.CrossAxisAlignment.center,
                                          children: [
                                            pw.Padding(
                                                padding: pw.EdgeInsets.all(5)),
                                            pw.Container(
                                              margin: pw.EdgeInsets.all(5),
                                              child: pw.Container(
                                                height: 30,
                                                width: 80,
                                                decoration: pw.BoxDecoration(
                                                  color: PdfColors.white,
                                                  border: pw.Border.all(
                                                      color: PdfColors.grey,
                                                      width: 2),
                                                  borderRadius:
                                                      pw.BorderRadius.circular(
                                                          10),
                                                ),
                                                alignment: pw.Alignment.center,
                                                child: pw.Text(
                                                  "Desg.",
                                                  style: pw.TextStyle(
                                                    fontSize: 12,
                                                    color: PdfColors.grey,
                                                    fontWeight:
                                                        pw.FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            pw.Padding(
                                                padding: pw.EdgeInsets.all(2)),
                                            pw.Align(
                                              child: pw.Text(
                                                "   ${Globals.refdesg}",
                                                style: pw.TextStyle(
                                                    fontSize: 17,
                                                    color: PdfColors.black,
                                                    fontWeight:
                                                        pw.FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                        pw.Row(
                                          crossAxisAlignment:pw.CrossAxisAlignment.center,
                                          children: [
                                            pw.Padding(
                                                padding: pw.EdgeInsets.all(5)),
                                            pw.Container(
                                              margin: pw.EdgeInsets.all(5),
                                              child: pw.Container(
                                                height: 30,
                                                width: 80,
                                                decoration: pw.BoxDecoration(
                                                  color: PdfColors.white,
                                                  border: pw.Border.all(
                                                      color: PdfColors.grey,
                                                      width: 2),
                                                  borderRadius:
                                                      pw.BorderRadius.circular(
                                                          10),
                                                ),
                                                alignment: pw.Alignment.center,
                                                child: pw.Text(
                                                  "comp.",
                                                  style: pw.TextStyle(
                                                    fontSize: 12,
                                                    color: PdfColors.grey,
                                                    fontWeight:
                                                        pw.FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            pw.Padding(
                                                padding: pw.EdgeInsets.all(2)),
                                            pw.Text(
                                              "   ${Globals.refcomp}",
                                              style: pw.TextStyle(
                                                  fontSize: 17,
                                                  color: PdfColors.black,
                                                  fontWeight:
                                                      pw.FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Resume"),
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios_rounded),
        ),
        actions: [
          IconButton(
            splashRadius: 25,
            icon: const Icon(Icons.file_download_outlined),
            onPressed: () async {
              Uint8List data = await pf.save();
              await Printing.layoutPdf(onLayout: (format) => data);
            },
          ),
        ],
        backgroundColor: const Color(0xff0475FF),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Container(
              height: 100,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey, width: 3),
              ),
              child: Align(
                  child: Text(
                "${Globals.name}",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(10),
              child: Container(
                width: 500,
                height: 50,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text(
                  "${Globals.desg}",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(10),
              child: Container(
                height: 100,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 3),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // pw.Image(image: AssetImage('asset/myimages/phone.png'),)

                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "(+91) ${Globals.phoneno}",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),

                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "${Globals.email}",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "${Globals.add1},${Globals.add2} ${Globals.add3}",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          "${Globals.Nation}",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.all(10),
              child: Container(
                height: 300,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 3),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            child: Container(
                              height: 40,
                              width: 120,
                              color: Colors.blue,
                              alignment: Alignment.center,
                              child: Text(
                                "Professional Profile",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "   ProjectName : ${Globals.protitle}",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.all(2)),
                          (Globals.C == true)
                              ? Text(
                                  "   C : ✅",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              : Text(
                                  "   C : ❌",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                          Padding(padding: EdgeInsets.all(2)),
                          (Globals.Cplus == true)
                              ? Text(
                                  "   C++ : ✅",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              : Text(
                                  "   Cplus : ❌",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                          Padding(padding: EdgeInsets.all(2)),
                          (Globals.Flutter == true)
                              ? Text(
                                  "   Flutter : ✅",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              : Text(
                                  "   Flutter : ❌",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                          Padding(padding: EdgeInsets.all(2)),
                          Text(
                            "   Roles : ${Globals.jobrole}",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.all(2)),
                          Text(
                            "   Technologies : ${Globals.technologies}",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(7)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            child: Container(
                              height: 40,
                              width: 120,
                              color: Colors.blue,
                              alignment: Alignment.center,
                              child: Text(
                                "Education",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "   ${Globals.passingyear}",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.all(2)),
                          Text(
                            "   ${Globals.collage}",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.all(2)),
                          Text(
                            "   Course : ${Globals.course}",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.all(2)),
                          Text(
                            "   CGPA : ${Globals.per}",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.all(2)),
                          Text(
                            "   Description : ${Globals.proDescription}",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.all(10),
              child: Container(
                height: 300,
                width: 600,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 3),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    child: Container(
                                      height: 40,
                                      width: 180,
                                      color: Colors.blue,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Professional Experience",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(padding: EdgeInsets.all(5)),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Container(
                                          height: 30,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Colors.grey, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Company Name",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.all(2)),
                                      Text(
                                        "   ${Globals.company}",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(padding: EdgeInsets.all(5)),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Container(
                                          height: 30,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Colors.grey, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Designation",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.all(2)),
                                      Align(
                                        child: Text(
                                          "   ${Globals.role}  \n   ${Globals.comptype}",
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(padding: EdgeInsets.all(5)),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Container(
                                          height: 30,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Colors.grey, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Status",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.all(2)),
                                      (Globals.pe == "Previously Employed")
                                          ? Text(
                                              "   ${Globals.datejoin1}   ${Globals.dateexit}",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          : Text(
                                              "   ${Globals.datejoin2}",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    child: Container(
                                      height: 40,
                                      width: 120,
                                      color: Colors.blue,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Referance",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(padding: EdgeInsets.all(5)),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Container(
                                          height: 30,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Colors.grey, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Ref Name",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.all(2)),
                                      Text(
                                        "   ${Globals.refname}",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(padding: EdgeInsets.all(5)),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Container(
                                          height: 30,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Colors.grey, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Desg.",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.all(2)),
                                      Align(
                                        child: Text(
                                          "   ${Globals.refdesg}",
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(padding: EdgeInsets.all(5)),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Container(
                                          height: 30,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Colors.grey, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "comp.",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.all(2)),
                                      Text(
                                        "   ${Globals.refcomp}",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor:Colors.white,
    );
  }
}
