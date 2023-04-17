import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:printing/printing.dart';
import 'package:resume_builder_app/utils/componants/image_utils.dart';
import '../../utils/componants/image_utils.dart';
import 'contactInfoPage_controller.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:io';

class DeclarationPage extends StatefulWidget {
  const DeclarationPage({Key? key}) : super(key: key);

  @override
  State<DeclarationPage> createState() => _DeclarationPageState();
}

class _DeclarationPageState extends State<DeclarationPage> {
  // var image = pw.MemoryImage(
  //  File("$FinalImage").readAsBytesSync(),
  // );

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery
        .of(context)
        .size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        toolbarHeight: 150,
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop('/');
            },
            child: const Icon(CupertinoIcons.back)),
        title: const Text(
          "Declaration",
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                height: 50,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Declaration",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    Switch(
                        value: switchValue,
                        onChanged: (val) {
                          setState(() {
                            switchValue = val;
                          });
                        }),
                  ],
                ),
              ),
              (switchValue)
                  ? Container(
                padding: const EdgeInsets.all(16),
                height: 450,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      imagePath + i11,
                      height: 40,
                      width: 40,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: declarationPageFormKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: declarationPageDegreeController,
                            textInputAction: TextInputAction.next,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your degree Please...";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                declarationPageDegree = val;
                              });
                            },
                            decoration: const InputDecoration(
                              hintText: 'B.Tech Information Technology',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                          const Divider(
                              color: Colors.grey,
                              height: 60,
                              thickness: 1.5),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Date",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "Place(Interview" "\n " "venue/City)",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: TextFormField(
                                  controller:
                                  declarationPageDateController,
                                  textInputAction: TextInputAction.next,
                                  onSaved: (val) {
                                    setState(() {
                                      declarationPageDate = val;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    hintText: 'DD/MM/YYYY',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.grey),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Expanded(
                                flex: 2,
                                child: TextFormField(
                                  controller:
                                  declarationPagePlaceController,
                                  textInputAction: TextInputAction.next,
                                  onSaved: (val) {
                                    setState(() {
                                      declarationPagePlace = val;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    hintText: 'Eg.Surat',
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.grey),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Center(
                              child: ElevatedButton(
                                onPressed: () async {
                                  pw.Document pdf = pw.Document();
                                  pdf.addPage(
                                    pw.Page(
                                        pageFormat: PdfPageFormat.a4,
                                        build: (pw.Context context) {
                                          return pw.Center(
                                            child: pw.Container(
                                              padding:
                                              const pw.EdgeInsets.all(16),
                                              height: 1.1 * h,
                                              width: 1.4 * w,
                                              decoration: pw.BoxDecoration(
                                                color: PdfColors.white,
                                                border: pw.Border.all(
                                                  color: PdfColors.black,
                                                ),
                                              ),
                                              child: pw.Container(
                                                height: h,
                                                width: w,
                                                child: pw.Container(
                                                  padding:
                                                  const pw.EdgeInsets.all(
                                                      16),
                                                  height: h * 0.99,
                                                  width: w * 0.99,
                                                  child: pw.Column(
                                                    mainAxisAlignment: pw
                                                        .MainAxisAlignment
                                                        .start,
                                                    crossAxisAlignment: pw
                                                        .CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      pw.Row(
                                                        children: [
                                                          pw.Expanded(
                                                            flex: 2,
                                                            child:
                                                            pw.Container(
                                                              height: 100,
                                                              width: 100,
                                                              decoration: pw
                                                                  .BoxDecoration(
                                                                border: pw
                                                                    .Border.all(
                                                                    color: PdfColors
                                                                        .black),
                                                              ),
                                                              //  child: pw.Image(image),
                                                            ),
                                                          ),
                                                          pw.Spacer(),
                                                          pw.Expanded(
                                                            flex: 7,
                                                            child: pw.Column(
                                                              mainAxisAlignment:
                                                              pw
                                                                  .MainAxisAlignment
                                                                  .start,
                                                              crossAxisAlignment:
                                                              pw
                                                                  .CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                pw.Text(
                                                                  "$contactInfoPageName",
                                                                  style: pw
                                                                      .TextStyle(
                                                                    fontWeight: pw
                                                                        .FontWeight
                                                                        .bold,
                                                                    fontSize: 25,
                                                                    color: PdfColors
                                                                        .red,),),
                                                                pw.Text(
                                                                  "$contactInfoPageAddress1",
                                                                  style: pw
                                                                      .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 18),),

                                                                pw.Text(
                                                                  "$contactInfoPageAddress2",
                                                                  style: pw
                                                                      .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 18),),
                                                                pw.Text(
                                                                  "$contactInfoPageAddress3",
                                                                  style: pw
                                                                      .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize:
                                                                      18),
                                                                ),
                                                                pw.Text(
                                                                  "$contactInfoPageEmail",
                                                                  style: pw
                                                                      .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize:
                                                                      18),
                                                                ),
                                                                pw.Text(
                                                                  "+91$contactInfoPagePhone",
                                                                  style: pw
                                                                      .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize:
                                                                      18),
                                                                ),
                                                                pw.Text(
                                                                  "$personalDetailsPagedob",
                                                                  style: pw
                                                                      .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize:
                                                                      18),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          pw.Spacer(),

                                                        ],
                                                      ),
                                                      pw.Divider(
                                                          height: 20,
                                                          color:
                                                          PdfColors.black,
                                                          thickness: 1.5),
                                                      pw.Row(
                                                        children: [
                                                          pw.Expanded(
                                                            flex: 4,
                                                            child: pw.Text(
                                                              "\nObjectives\n",
                                                              style: const pw
                                                                  .TextStyle(
                                                                  color: PdfColors
                                                                      .redAccent,
                                                                  fontSize:
                                                                  21),
                                                            ),
                                                          ),
                                                          pw.Spacer(),
                                                          pw.Expanded(
                                                            flex: 8,
                                                            child: (carrierObjectivePageDescription) !=
                                                                null ? pw.Text(
                                                              "$carrierObjectivePageDescription",
                                                              style: const pw
                                                                  .TextStyle(
                                                                  fontSize:
                                                                  18),
                                                            ) : pw.Text("--"),
                                                          ),
                                                        ],
                                                      ),
                                                      pw.Divider(
                                                          height: 20,
                                                          color:
                                                          PdfColors.black,
                                                          thickness: 1.5),
                                                      pw.Row(
                                                        children: [
                                                          pw.Expanded(
                                                            flex: 4,
                                                            child: pw.Text(
                                                              "\nEducation\n",
                                                              style: const pw
                                                                  .TextStyle(
                                                                  color: PdfColors
                                                                      .redAccent,
                                                                  fontSize:
                                                                  21),
                                                            ),
                                                          ),
                                                          pw.Spacer(),
                                                          pw.Expanded(
                                                            flex: 8,
                                                            child: pw.Column(
                                                              crossAxisAlignment:
                                                              pw
                                                                  .CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                pw.Text(
                                                                  "Course/Degree :$educationPageDegree",
                                                                  style: const pw
                                                                      .TextStyle(
                                                                      fontSize:
                                                                      18),
                                                                ),
                                                                pw.Text(
                                                                  "Institute Name :$educationPageInstitute",
                                                                  style: const pw
                                                                      .TextStyle(
                                                                      fontSize:
                                                                      18),
                                                                ),
                                                                pw.Text(
                                                                  "Percentage :$educationPagePercentage",
                                                                  style: const pw
                                                                      .TextStyle(
                                                                      fontSize:
                                                                      18),
                                                                ),
                                                                pw.Text(
                                                                  "Year of Passing :$educationPagePassingYear",
                                                                  style: const pw
                                                                      .TextStyle(
                                                                      fontSize:
                                                                      18),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      pw.Divider(
                                                          height: 20,
                                                          color:
                                                          PdfColors.black,
                                                          thickness: 1.5),
                                                      pw.Row(
                                                        children: [
                                                          pw.Expanded(
                                                            flex: 4,
                                                            child: pw.Text(
                                                              "\nExperience\n",
                                                              style: const pw
                                                                  .TextStyle(
                                                                  color: PdfColors
                                                                      .redAccent,
                                                                  fontSize:
                                                                  21),
                                                            ),
                                                          ),
                                                          pw.Spacer(),
                                                          pw.Expanded(
                                                            flex: 8,
                                                            child: pw.Column(
                                                              crossAxisAlignment:
                                                              pw
                                                                  .CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                pw.Text(
                                                                  "Company name :$experiencePageCompanyName",
                                                                  style: const pw
                                                                      .TextStyle(
                                                                      fontSize:
                                                                      18),
                                                                ),
                                                                pw.Text(
                                                                  "Role :$experiencePageRole",
                                                                  style: const pw
                                                                      .TextStyle(
                                                                      fontSize:
                                                                      18),
                                                                ),
                                                                pw.Text(
                                                                  "Description :$experiencePagePost",
                                                                  style: const pw
                                                                      .TextStyle(
                                                                      fontSize:
                                                                      18),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      pw.Divider(
                                                          height: 20,
                                                          color:
                                                          PdfColors.black,
                                                          thickness: 1.5),
                                                      pw.Row(
                                                        children: [
                                                          pw.Expanded(
                                                            flex: 4,
                                                            child: pw.Text(
                                                              "\nProjects\n",
                                                              style: const pw
                                                                  .TextStyle(
                                                                  color: PdfColors
                                                                      .redAccent,
                                                                  fontSize:
                                                                  21),
                                                            ),
                                                          ),
                                                          pw.Spacer(),
                                                          pw.Expanded(
                                                            flex: 8,
                                                            child: pw.Column(
                                                              crossAxisAlignment:
                                                              pw
                                                                  .CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                pw.Text(
                                                                  "Project Title :$projectPageTitle",
                                                                  style: const pw
                                                                      .TextStyle(
                                                                      fontSize:
                                                                      18),
                                                                ),
                                                                pw.Text(
                                                                  "Roles :$projectPageRole",
                                                                  style: const pw
                                                                      .TextStyle(
                                                                      fontSize:
                                                                      18),
                                                                ),
                                                                pw.Text(
                                                                  "Technologies :$projectPageTechnologies",
                                                                  style: const pw
                                                                      .TextStyle(
                                                                      fontSize:
                                                                      18),
                                                                ),
                                                                pw.Text(
                                                                  "Description of Project :$projectPageDescription",
                                                                  style: const pw
                                                                      .TextStyle(
                                                                      fontSize:
                                                                      18),
                                                                ),

                                                              ],

                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      pw.Divider(
                                                        height: 20,
                                                        color:
                                                        PdfColors.black,
                                                        thickness: 1.5,
                                                      ),
                                                      pw.Row(
                                                        children: [
                                                          pw.Expanded(
                                                            flex: 4,
                                                            child: pw.Text(
                                                              "Language",
                                                              style: const pw
                                                                  .TextStyle(
                                                                  color: PdfColors
                                                                      .redAccent,
                                                                  fontSize:
                                                                  21),
                                                            ),
                                                          ),
                                                          pw.Spacer(),
                                                          pw.Expanded(
                                                            flex: 8,
                                                            child: pw.Column(
                                                              crossAxisAlignment:
                                                              pw
                                                                  .CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                (isHindi &&
                                                                    isEnglish &&
                                                                    isGujarati)
                                                                    ? pw.Text(
                                                                  "Hindi, English, Gujarati",
                                                                  style: const pw
                                                                      .TextStyle(
                                                                      fontSize: 18),)
                                                                    : (isEnglish &&
                                                                    isHindi)
                                                                    ? pw.Text(
                                                                  "English Hindi",
                                                                  style: const pw
                                                                      .TextStyle(
                                                                      fontSize: 18),)
                                                                    : (isHindi &&
                                                                    isGujarati)
                                                                    ? pw.Text(
                                                                  "Hindi Gujarati",
                                                                  style: const pw
                                                                      .TextStyle(
                                                                      fontSize: 18),)
                                                                    : (isHindi)
                                                                    ? pw.Text(
                                                                    "Hindi")
                                                                    : (isEnglish &&
                                                                    isGujarati)
                                                                    ? pw.Text(
                                                                    "English Gujarati")
                                                                    : (isEnglish)
                                                                    ? pw.Text(
                                                                    "English")
                                                                    : (isGujarati)
                                                                    ? pw.Text(
                                                                    "Gujarati")
                                                                    : pw.Text(
                                                                    ""),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      pw.Divider(
                                                        height: 20,
                                                        color:
                                                        PdfColors.black,
                                                        thickness: 1.5,
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        }),
                                  );

                                  //new page

                                  pdf.addPage(
                                    pw.Page(
                                        pageFormat: PdfPageFormat.a4,
                                        build: (pw.Context context) {
                                          return pw.Center(
                                            child: pw.Container(
                                              padding:
                                              const pw.EdgeInsets.all(16),
                                              height: 1.1 * h,
                                              width: 1.4 * w,
                                              decoration: pw.BoxDecoration(
                                                color: PdfColors.white,
                                                border: pw.Border.all(
                                                  color: PdfColors.black,
                                                ),
                                              ),
                                              child: pw.Container(
                                                height: h,
                                                width: w,
                                                child: pw.Container(
                                                  padding:
                                                  const pw.EdgeInsets.all(
                                                      16),
                                                  height: h * 0.99,
                                                  width: w * 0.99,
                                                  child: pw.Column(
                                                    mainAxisAlignment: pw
                                                        .MainAxisAlignment
                                                        .start,
                                                    crossAxisAlignment: pw
                                                        .CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      pw.Row(
                                                        children: [
                                                          pw.Expanded(
                                                            flex: 5,
                                                            child: pw.Text(
                                                              "\nAchievement\n",
                                                              style: const pw
                                                                  .TextStyle(
                                                                  color: PdfColors
                                                                      .redAccent,
                                                                  fontSize:
                                                                  21),
                                                            ),
                                                          ),
                                                          pw.Spacer(),
                                                          pw.Expanded(
                                                            flex: 8,
                                                            child: pw.Column(
                                                              crossAxisAlignment: pw
                                                                  .CrossAxisAlignment
                                                                  .start,
                                                              children: Achievements
                                                                  .map((e) =>
                                                                  pw.Text(e,
                                                                    style: const pw
                                                                        .TextStyle(
                                                                        fontSize: 18),))
                                                                  .toList(),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      pw.Divider(
                                                        height: 20,
                                                        color:
                                                        PdfColors.black,
                                                        thickness: 1.5,
                                                      ),
                                                      pw.Row(
                                                        children: [
                                                          pw.Expanded(
                                                            flex: 4,
                                                            child: pw.Text(
                                                              "\nTechnical Skill\n",
                                                              style: const pw
                                                                  .TextStyle(
                                                                  color: PdfColors
                                                                      .redAccent,
                                                                  fontSize:
                                                                  21),
                                                            ),
                                                          ),
                                                          pw.Spacer(),
                                                          pw.Expanded(
                                                            flex: 8,
                                                            child: pw.Column(
                                                              crossAxisAlignment: pw
                                                                  .CrossAxisAlignment
                                                                  .start,
                                                              children: TechnicalSkill
                                                                  .map((e) =>
                                                                  pw.Text(e,
                                                                    style: const pw
                                                                        .TextStyle(
                                                                        fontSize: 18),))
                                                                  .toList(),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      pw.Divider(
                                                        height: 20,
                                                        color:
                                                        PdfColors.black,
                                                        thickness: 1.5,
                                                      ),
                                                      pw.Row(
                                                        children: [
                                                          pw.Expanded(
                                                            flex: 4,
                                                            child: pw.Text(
                                                              "\nReference\n",
                                                              style: const pw
                                                                  .TextStyle(
                                                                  color: PdfColors
                                                                      .redAccent,
                                                                  fontSize:
                                                                  21),
                                                            ),
                                                          ),
                                                          pw.Spacer(),
                                                          pw.Expanded(
                                                            flex: 8,
                                                            child: pw.Column(
                                                              crossAxisAlignment:
                                                              pw
                                                                  .CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                pw.Text(
                                                                  "Reference name :",
                                                                  style: const pw
                                                                      .TextStyle(
                                                                      fontSize:
                                                                      18),
                                                                ),
                                                                pw.Text(
                                                                  "Designation :",
                                                                  style: const pw
                                                                      .TextStyle(
                                                                      fontSize:
                                                                      18),
                                                                ),
                                                                pw.Text(
                                                                  "Organization :",
                                                                  style: const pw
                                                                      .TextStyle(
                                                                      fontSize:
                                                                      18),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        }),
                                  );
                                  await Printing.layoutPdf(
                                      onLayout: (format) {
                                        return pdf.save();
                                      });
                                },
                                child: const Text("   SAVE   "),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
