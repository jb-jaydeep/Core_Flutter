// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:invoice_generator/Screens/utils/All_Utils.dart';
//
// class itemPage extends StatefulWidget {
//   const itemPage({Key? key}) : super(key: key);
//
//   @override
//   State<itemPage> createState() => _itemPageState();
// }
//
// class _itemPageState extends State<itemPage> {
//   @override
//   Widget build(BuildContext context) {
//     Size s = MediaQuery.of(context).size;
//     double h = s.height;
//     double w = s.width;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Invoice Generator"),
//         centerTitle: true,
//         backgroundColor: Colors.blueGrey.shade500,
//         leading: IconButton(
//           icon: const Icon(
//             CupertinoIcons.back,
//           ),
//           onPressed: () {
//             setState(() {
//               Navigator.of(context).pop();
//             });
//           },
//         ),
//       ),
//       body: Container(
//         height: h,
//         width: w,
//         padding: const EdgeInsets.all(16),
//         color: Colors.blueGrey,
//         child: Form(
//           key: itemKey,
//           child: Column(
//             children: [
//               const Text(
//                 "Add Item ",
//                 style: TextStyle(
//                   fontSize: 21,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//                SizedBox(
//                 height:  h*0.02,
//               ),
//               // Item Name
//               TextFormField(
//                 controller: itemNameController,
//                 textInputAction: TextInputAction.next,
//                 validator: (val) {
//                   if (val!.isEmpty) {
//                     return "Enter Item Name Please...";
//                   }
//                   return null;
//                 },
//                 onSaved: (val) {
//                   setState(() {
//                     itemName = val;
//                   });
//                 },
//                 decoration: const InputDecoration(
//                   hintText: 'Shoes,Bag etc..',
//                   hintStyle: TextStyle(
//                     color: Colors.white,
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.grey),
//                   ),
//                 ),
//               ),
//                SizedBox(height:  h*0.02,),
//               Row(
//                 children: [
//                   Expanded(
//                     child: SizedBox(
//                       height: h*0.08,
//                       // decoration: BoxDecoration(
//                       //   border: Border.all(color: Colors.black87,),
//                       //   borderRadius: BorderRadius.circular(5),
//                       // ),
//                       child: TextFormField(
//                         controller: itemQuantityController,
//                         textInputAction: TextInputAction.next,
//                         validator: (val) {
//                           if (val!.isEmpty) {
//                             return "Enter Item Quantity Please...";
//                           }
//                           return null;
//                         },
//                         onSaved: (val) {
//                           setState(() {
//                             itemQuantity = val;
//                           });
//                         },
//                         decoration: const InputDecoration(
//                           hintText: 'Item Quantity',
//                           hintStyle: TextStyle(
//                             color: Colors.white,
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.black),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.grey),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 20,
//                   ),
//                   Expanded(
//                     child: SizedBox(
//                       height: h*0.08,
//                       // decoration: BoxDecoration(
//                       //   border: Border.all(color: Colors.black87,),
//                       //   borderRadius: BorderRadius.circular(5),
//                       // ),
//                       child: TextFormField(
//                         controller: itemUnitController,
//                         textInputAction: TextInputAction.next,
//                         validator: (val) {
//                           if (val!.isEmpty) {
//                             return "Enter Unit Please...";
//                           }
//                           return null;
//                         },
//                         onSaved: (val) {
//                           setState(() {
//                             itemUnit = val;
//                           });
//                         },
//                         decoration: const InputDecoration(
//                           hintText: 'Item Unit',
//                           hintStyle: TextStyle(
//                             color: Colors.white,
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.black),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.grey),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//                SizedBox(height: h*0.02,),
//               Row(
//                 children: [
//                   Expanded(
//                     child: SizedBox(
//                       height: h*0.08,
//                       child: TextFormField(
//                         controller: itemRateController,
//                         textInputAction: TextInputAction.next,
//                         validator: (val) {
//                           if (val!.isEmpty) {
//                             return "Enter Item Quantity Please...";
//                           }
//                           return null;
//                         },
//                         onSaved: (val) {
//                           setState(() {
//                             itemRate = val;
//                           });
//                         },
//                         decoration: const InputDecoration(
//                           hintText: 'Rate/Unit',
//                           hintStyle: TextStyle(
//                             color: Colors.white,
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.black),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.grey),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 20,),
//
//                 ],
//               ),
//                SizedBox(height:  h*0.02,),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Expanded(
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         border: Border.all(color: Colors.black87),
//                         borderRadius: BorderRadius.circular(5),
//                       ),
//                         child: ElevatedButton(
//                           style:ButtonStyle(
//                             minimumSize:MaterialStateProperty.all(const Size(100, 50),) ,
//                             backgroundColor:MaterialStateProperty.all(Colors.white,),),
//                           onPressed: ()async{
//                             if(itemKey.currentState!.validate()){
//
//                               itemKey.currentState!.save();
//                               Map <String, dynamic> items = {
//                                 'ItemName': itemName,
//                                 'Quantity': itemQuantity,
//                                 'Rate': itemRate,
//                                 'Unit': itemUnit,
//                               };
//
//                               setState(() {
//                                 itemList.add(items);
//                               });
//
//
//                             }
//                             itemNameController.clear();
//                             itemQuantityController.clear();
//                             itemRateController.clear();
//                             itemUnitController.clear();
//                             await Navigator.of(context).pushNamedAndRemoveUntil('itemPage', (route) => false);
//                             setState(() {
//
//                             });
//
//                             // Navigator.of(context).pushNamed('PdfPage',//arguments:
//                             //      );
//                           },
//                           child: Text("Save & New",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,),),)
//                     ),
//                   ),
//                    SizedBox(width: h*0.026,),
//                   Expanded(
//                     child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           border: Border.all(color: Colors.black87),
//                           borderRadius: BorderRadius.circular(5),
//                         ),
//                         child: ElevatedButton(
//                           onPressed: (){
//                             Navigator.of(context).pushNamed('PdfPage',arguments: itemList);
//                           },
//                           style:ButtonStyle(
//                             minimumSize:MaterialStateProperty.all(const Size(100, 50),) ,
//                             backgroundColor:MaterialStateProperty.all(Colors.white,),),
//
//                           child: Text("Save",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18,),),)),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:invoice_generator/Screens/utils/All_Utils.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as pw;

class Items extends StatefulWidget {
  const Items({Key? key}) : super(key: key);

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  List<Row> allitemtextFilds = [];
  List<Row> allqtytextFilds = [];
  List<Row> allratetextFilds = [];
  List<TextEditingController> allitemcontrollers = <TextEditingController>[];
  List<TextEditingController> allqtycontrollers = <TextEditingController>[];
  List<TextEditingController> allratecontrollers = <TextEditingController>[];

  @override
  void initState() {
    super.initState();
    allitemcontrollers.add(TextEditingController());
    allqtycontrollers.add(TextEditingController());
    allratecontrollers.add(TextEditingController());

    allitemtextFilds.add(gettextfield(i: 0, row: Row()));
    allqtytextFilds.add(gettextfield(i: 0, row: Row()));
    allratetextFilds.add(gettextfield(i: 0, row: Row()));
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("Items"),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Globel.initalDropdownVal = null;
              Globel.allitems.clear();
              Globel.allqty.clear();
              Globel.allrate.clear();
              Globel.amount.clear();
              Globel.subtotal = 0;
              Globel.total = 0;
              Globel.gst = 0;
              setState(() {
                allitemtextFilds.clear();
                allqtytextFilds.clear();
                allratetextFilds.clear();

                allitemcontrollers.clear();
                allqtycontrollers.clear();
                allratecontrollers.clear();
              });
            },
            icon: const Icon(Icons.delete_forever),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        border: Border.all(color: Colors.black),
                      ),
                      child: DropdownButton(
                        value: Globel.initalDropdownVal,
                        hint: Text(
                          "Select Gst",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        onChanged: (val) {
                          setState(() {
                            Globel.initalDropdownVal = val;
                          });
                        },
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text("0%"),
                          ),
                          DropdownMenuItem(
                            value: 5,
                            child: Text("5%"),
                          ),
                          DropdownMenuItem(
                            value: 12,
                            child: Text("12%"),
                          ),
                          DropdownMenuItem(
                            value: 18,
                            child: Text("18%"),
                          ),
                          DropdownMenuItem(
                            value: 28,
                            child: Text("28%"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      height: 110,
                      color: Colors.blueGrey,
                      child: TextField(
                        controller: InvoiceNoController,
                        decoration: InputDecoration(
                          hintText: "Invoice No.",
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        onChanged: (val) {
                          invoiceNo = val;
                        },
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      height: 110,
                      width: 150,
                      color: Colors.blueGrey,
                      child: TextField(
                        controller: InvoiceDateController,
                        decoration: InputDecoration(
                          hintText: "Invoice Date",
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        onChanged: (val) {
                          invoiceDate = val;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 12,
              child: Container(
                color: Colors.blueGrey,
                padding: const EdgeInsets.all(15),
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Text(
                        "Enter Items",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          ...allitemtextFilds
                              .map((e) => gettextfield(
                                  i: allitemtextFilds.indexOf(e), row: e))
                              .toList(),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        width: w,
                        child: OutlinedButton(
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                            Colors.white,
                          )),
                          child: const Icon(
                            Icons.add,
                            color: Colors.black87,
                          ),
                          onPressed: () {
                            setState(() {
                              allitemcontrollers.add(TextEditingController());
                              allqtycontrollers.add(TextEditingController());
                              allratecontrollers.add(TextEditingController());

                              allitemtextFilds.add(gettextfield(
                                  i: allitemtextFilds.length, row: Row()));
                              allqtytextFilds.add(gettextfield(
                                  i: allqtytextFilds.length, row: Row()));
                              allratetextFilds.add(gettextfield(
                                  i: allratetextFilds.length, row: Row()));
                            });
                          },
                        ),
                      ),
                      // Text("${Globel.allitems}"),
                      // Text("${Globel.allqty}"),
                      // Text("${Globel.allrate}"),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        child: const Text(
                          "SAVE",
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          Colors.white,
                        )),
                        onPressed: () {
                          setState(() {
                            allitemcontrollers
                                .map((e) => Globel.allitems.add(e.text))
                                .toList();
                            allqtycontrollers
                                .map(
                                    (b) => Globel.allqty.add(int.parse(b.text)))
                                .toList();
                            allratecontrollers
                                .map((c) =>
                                    Globel.allrate.add(int.parse(c.text)))
                                .toList();
                            Globel.allqty.forEach((e) => Globel.amount.add(e *
                                Globel.allrate
                                    .elementAt(Globel.allqty.indexOf(e))));
                            for (int i = 0; i < Globel.amount.length; i++) {
                              Globel.subtotal += Globel.amount[i];
                            }
                            Globel.gst = Globel.subtotal *
                                Globel.initalDropdownVal /
                                100;
                            Globel.total = Globel.subtotal + Globel.gst;
                          });
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          setState(() {
                            allitemcontrollers
                                .map((e) => Globel.allitems.add(e.text))
                                .toList();
                            allqtycontrollers
                                .map(
                                    (b) => Globel.allqty.add(int.parse(b.text)))
                                .toList();
                            allratecontrollers
                                .map((c) =>
                                    Globel.allrate.add(int.parse(c.text)))
                                .toList();
                            Globel.allqty.forEach((e) => Globel.amount.add(e *
                                Globel.allrate
                                    .elementAt(Globel.allqty.indexOf(e))));
                            for (int i = 0; i < Globel.amount.length; i++) {
                              Globel.subtotal += Globel.amount[i];
                            }
                            Globel.gst = Globel.subtotal *
                                Globel.initalDropdownVal /
                                100;
                            Globel.total = Globel.subtotal + Globel.gst;
                          });
                          //  Navigator.of(context).pushNamed('PdfPage');
                          pw.Document pdf = pw.Document();
                          var img;
                          if (FinalImage != null) {
                            File imgFile = FinalImage as File;
                            img = pw.MemoryImage(
                              imgFile.readAsBytesSync(),
                            );
                          }
                          pdf.addPage(
                            pw.Page(
                                pageFormat: PdfPageFormat.a4,
                                build: (pw.Context context) {
                                  return pw.Container(
                                    height: double.infinity,
                                    width: double.infinity,
                                    margin: pw.EdgeInsets.all(20),
                                    alignment: pw.Alignment.topLeft,
                                    child: pw.Column(
                                      crossAxisAlignment:
                                          pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Center(
                                          child: pw.Text(
                                            " Tax Invoice",
                                          ),
                                        ),
                                        pw.Row(
                                          mainAxisAlignment:
                                              pw.MainAxisAlignment.spaceBetween,
                                          children: [
                                            pw.Column(
                                              crossAxisAlignment:
                                                  pw.CrossAxisAlignment.start,
                                              children: [
                                                pw.Container(
                                                  height: 80,
                                                  width: 100,
                                                  child: pw.Image(img),
                                                ),
                                                pw.SizedBox(
                                                  height: 10,
                                                ),
                                                pw.Text(
                                                  "$companyName",
                                                ),
                                                pw.Text(
                                                  "$companyAddress",
                                                ),
                                                pw.Text(
                                                  "$companyAddress1",
                                                ),
                                                pw.Text(
                                                  "$CompanyContact",
                                                ),
                                                pw.Text(
                                                  "$companyGst",
                                                ),
                                              ],
                                            ),
                                            //invoice details ==============
                                            pw.Column(
                                              crossAxisAlignment:
                                                  pw.CrossAxisAlignment.end,
                                              children: [
                                                pw.SizedBox(
                                                  height: 15,
                                                ),
                                                pw.Text(
                                                  "INVOICE NO.:$invoiceNo",
                                                ),
                                                pw.SizedBox(
                                                  height: 10,
                                                ),
                                                pw.Text(
                                                  "INVOICE DATE.:$invoiceDate",
                                                ),
                                                pw.SizedBox(
                                                  height: 10,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        pw.Divider(
                                          thickness: 1,
                                        ),
                                        pw.Text(
                                          "BILL To",
                                        ),
                                        pw.SizedBox(
                                          height: 15,
                                        ),
                                        pw.Text(
                                          " $partyName",
                                        ),
                                        pw.Text(
                                          " $partyAddress",
                                        ),
                                        pw.Text(
                                          "$partyAddress1",
                                        ),
                                        pw.Text(
                                          "$partyContact",
                                        ),
                                        pw.Text(
                                          "$partyGst",
                                        ),
                                        pw.Divider(
                                          thickness: 1,
                                        ),
                                        pw.Row(
                                          children: [
                                            pw.Column(
                                              crossAxisAlignment:
                                                  pw.CrossAxisAlignment.start,
                                              children: [
                                                pw.Text(
                                                  "DESCRIPTION",
                                                  style: pw.TextStyle(
                                                    fontSize: 21,
                                                  ),
                                                ),
                                                pw.SizedBox(
                                                  width: 170,
                                                  child: pw.Divider(
                                                    thickness: 1,
                                                  ),
                                                ),
                                                ...Globel.allitems
                                                    .map((e) => pw.Text(e))
                                                    .toList(),
                                                pw.SizedBox(
                                                  width: 170,
                                                  child: pw.Divider(
                                                    thickness: 1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            pw.Column(
                                              crossAxisAlignment:
                                                  pw.CrossAxisAlignment.start,
                                              children: [
                                                pw.Text(
                                                  "QUNTITY",
                                                ),
                                                pw.SizedBox(
                                                  width: 100,
                                                  child: pw.Divider(
                                                    thickness: 1,
                                                  ),
                                                ),
                                                ...Globel.allqty
                                                    .map((e) => pw.Text("${e}"))
                                                    .toList(),
                                                pw.SizedBox(
                                                  width: 100,
                                                  child: pw.Divider(
                                                    thickness: 1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            pw.Column(
                                              crossAxisAlignment:
                                                  pw.CrossAxisAlignment.start,
                                              children: [
                                                pw.Text(
                                                  "RATE",
                                                ),
                                                pw.SizedBox(
                                                  width: 80,
                                                  child: pw.Divider(
                                                    thickness: 1,
                                                  ),
                                                ),
                                                ...Globel.allrate
                                                    .map((e) => pw.Text("${e}"))
                                                    .toList(),
                                                pw.SizedBox(
                                                  width: 80,
                                                  child: pw.Divider(
                                                    thickness: 1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            pw.Column(
                                              crossAxisAlignment:
                                                  pw.CrossAxisAlignment.start,
                                              children: [
                                                pw.Text(
                                                  "AMOUNT",
                                                ),
                                                pw.SizedBox(
                                                  width: 92,
                                                  child: pw.Divider(
                                                    thickness: 1,
                                                  ),
                                                ),
                                                ...Globel.amount
                                                    .map((e) => pw.Text("$e"))
                                                    .toList(),
                                                pw.SizedBox(
                                                  width: 92,
                                                  child: pw.Divider(
                                                    thickness: 1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        pw.Transform.translate(
                                          offset: PdfPoint(170, 0),
                                          child: pw.Column(
                                            children: [
                                              pw.Row(
                                                mainAxisAlignment:
                                                    pw.MainAxisAlignment.start,
                                                children: [
                                                  pw.Text(
                                                    "SUBTOTAL: ",
                                                  ),
                                                  pw.SizedBox(
                                                    width: 85,
                                                  ),
                                                  pw.Text(
                                                      "Rs.${Globel.subtotal}"),
                                                ],
                                              ),
                                              pw.Divider(
                                                thickness: 1,
                                                endIndent: 170,
                                              ),
                                              pw.Row(
                                                mainAxisAlignment:
                                                    pw.MainAxisAlignment.start,
                                                children: [
                                                  pw.Text(
                                                    "GST: ",
                                                  ),
                                                  pw.SizedBox(
                                                    width: 135,
                                                  ),
                                                  pw.Text(
                                                      "${Globel.initalDropdownVal}% (Rs.${Globel.gst.toInt()})"),
                                                ],
                                              ),
                                              pw.Divider(
                                                thickness: 1,
                                                endIndent: 170,
                                                // color: Colors.black,
                                              ),
                                              pw.Row(
                                                mainAxisAlignment:
                                                    pw.MainAxisAlignment.start,
                                                children: [
                                                  pw.Text(
                                                    "TOTAL: ",
                                                  ),
                                                  pw.SizedBox(
                                                    width: 119,
                                                  ),
                                                  pw.Text(
                                                      "Rs.${Globel.total.toInt()}"),
                                                ],
                                              ),
                                              pw.Divider(
                                                thickness: 1,
                                                endIndent: 170,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          );
                          await Printing.layoutPdf(onLayout: (format) {
                            return pdf.save();
                          });
                        },

                        // onPressed: () async {
                        //   pw.Document pdf = pw.Document();
                        //   var img;
                        //   if (FinalImage != null) {
                        //     File imgFile = FinalImage as File;
                        //
                        //     img = pw.MemoryImage(
                        //       imgFile.readAsBytesSync(),
                        //     );
                        //   }
                        //
                        //   pdf.addPage(
                        //     pw.Page(
                        //         pageFormat: PdfPageFormat.a4,
                        //         build: (pw.Context context) {
                        //           return pw.Column(
                        //             mainAxisAlignment:
                        //                 pw.MainAxisAlignment.start,
                        //             // children: [
                        //             //   pw.Center(
                        //             //     child: pw.Text("Tax Invoice"),
                        //             //   ),
                        //             //   pw.Container(
                        //             //     height: h * 0.99,
                        //             //     width: w * 0.99,
                        //             //     decoration: pw.BoxDecoration(
                        //             //       border: pw.Border.all(
                        //             //           color: PdfColors.black),
                        //             //     ),
                        //             //     child: pw.Column(
                        //             //       children: [
                        //             //         pw.Container(
                        //             //           padding:
                        //             //               pw.EdgeInsets.all(10),
                        //             //           height: h * 0.2,
                        //             //           width: w,
                        //             //           decoration: pw.BoxDecoration(
                        //             //             color: PdfColors.white,
                        //             //             border: pw.Border.all(
                        //             //               color: PdfColors.black,
                        //             //             ),
                        //             //           ),
                        //             //           child: pw.Row(
                        //             //             children: [
                        //             //               pw.Expanded(
                        //             //                 flex: 2,
                        //             //                 child: (img != null)
                        //             //                     ? pw.Container(
                        //             //                         child: pw.Image(
                        //             //                           img,
                        //             //                           fit: pw.BoxFit
                        //             //                               .fill,
                        //             //                         ),
                        //             //                       )
                        //             //                     : pw.Container(
                        //             //                         child: pw.Text(
                        //             //                             "No image picked yet..."),
                        //             //                       ),
                        //             //               ),
                        //             //               pw.Expanded(
                        //             //                 flex: 6,
                        //             //                 child: pw.Container(
                        //             //                   child: pw.Column(
                        //             //                     crossAxisAlignment: pw
                        //             //                         .CrossAxisAlignment
                        //             //                         .end,
                        //             //                     children: [
                        //             //                       pw.Text(
                        //             //                         "$companyName",
                        //             //                         style: pw
                        //             //                             .TextStyle(
                        //             //                           color:
                        //             //                               PdfColors
                        //             //                                   .black,
                        //             //                           fontSize: 21,
                        //             //                           fontWeight: pw
                        //             //                               .FontWeight
                        //             //                               .bold,
                        //             //                         ),
                        //             //                       ),
                        //             //                       pw.Text(
                        //             //                         "Contact No.: $CompanyContact",
                        //             //                         style: pw
                        //             //                             .TextStyle(
                        //             //                           color:
                        //             //                               PdfColors
                        //             //                                   .black,
                        //             //                           fontSize: 16,
                        //             //                         ),
                        //             //                       ),
                        //             //                       pw.Text(
                        //             //                         "GSTIN: $companyGst",
                        //             //                         style: pw
                        //             //                             .TextStyle(
                        //             //                           color:
                        //             //                               PdfColors
                        //             //                                   .black,
                        //             //                           fontSize: 16,
                        //             //                         ),
                        //             //                       ),
                        //             //                     ],
                        //             //                   ),
                        //             //                 ),
                        //             //               ),
                        //             //             ],
                        //             //           ),
                        //             //         ),
                        //             //         pw.Container(
                        //             //           padding:
                        //             //               pw.EdgeInsets.all(10),
                        //             //           height: h * 0.4,
                        //             //           width: w,
                        //             //           decoration: pw.BoxDecoration(
                        //             //             color: PdfColors.white,
                        //             //             border: pw.Border.all(
                        //             //               color: PdfColors.black,
                        //             //             ),
                        //             //           ),
                        //             //           child: pw.Row(
                        //             //             children: [
                        //             //               pw.Expanded(
                        //             //                 flex: 2,
                        //             //                 child: pw.Container(
                        //             //                   decoration:
                        //             //                       pw.BoxDecoration(
                        //             //                     color:
                        //             //                         PdfColors.white,
                        //             //                     border:
                        //             //                         pw.Border.all(
                        //             //                       color: PdfColors
                        //             //                           .black,
                        //             //                     ),
                        //             //                   ),
                        //             //                   child: pw.Column(
                        //             //                     crossAxisAlignment: pw
                        //             //                         .CrossAxisAlignment
                        //             //                         .start,
                        //             //                     children: [
                        //             //                       pw.Container(
                        //             //                           decoration: pw
                        //             //                               .BoxDecoration(
                        //             //                             color: PdfColors
                        //             //                                 .orange300,
                        //             //                             border:
                        //             //                                 pw.Border
                        //             //                                     .all(
                        //             //                               color: PdfColors
                        //             //                                   .black,
                        //             //                             ),
                        //             //                           ),
                        //             //                           child: pw.Text(
                        //             //                               "Bill To")),
                        //             //                       pw.Container(
                        //             //                         decoration: pw
                        //             //                             .BoxDecoration(
                        //             //                           color:
                        //             //                               PdfColors
                        //             //                                   .white,
                        //             //                           border:
                        //             //                               pw.Border
                        //             //                                   .all(
                        //             //                             color: PdfColors
                        //             //                                 .black,
                        //             //                           ),
                        //             //                         ),
                        //             //                         child:
                        //             //                             pw.Column(
                        //             //                           children: [
                        //             //                             pw.Text(
                        //             //                                 "$partyName"),
                        //             //                             pw.Text(
                        //             //                                 "$partyAddress"),
                        //             //                             pw.Text(
                        //             //                                 "$partyAddress1"),
                        //             //                             pw.Text(
                        //             //                                 "GSTIN: $partyGst"),
                        //             //                             pw.Text(
                        //             //                                 "Contact No.: $partyContact"),
                        //             //                           ],
                        //             //                         ),
                        //             //                       ),
                        //             //                       pw.Container(
                        //             //                           decoration: pw
                        //             //                               .BoxDecoration(
                        //             //                             color: PdfColors
                        //             //                                 .white,
                        //             //                             border:
                        //             //                                 pw.Border
                        //             //                                     .all(
                        //             //                               color: PdfColors
                        //             //                                   .black,
                        //             //                             ),
                        //             //                           ),
                        //             //                           child: pw.Text(
                        //             //                               "Invoice No.: $invoiceNo")),
                        //             //                     ],
                        //             //                   ),
                        //             //                 ),
                        //             //               ),
                        //             //               pw.Expanded(
                        //             //                 flex: 2,
                        //             //                 child: pw.Container(
                        //             //                   child: pw.Column(
                        //             //                     crossAxisAlignment: pw
                        //             //                         .CrossAxisAlignment
                        //             //                         .end,
                        //             //                     children: [
                        //             //                       pw.Text(
                        //             //                         "$companyName",
                        //             //                         style: pw
                        //             //                             .TextStyle(
                        //             //                           color:
                        //             //                               PdfColors
                        //             //                                   .black,
                        //             //                           fontSize: 21,
                        //             //                           fontWeight: pw
                        //             //                               .FontWeight
                        //             //                               .bold,
                        //             //                         ),
                        //             //                       ),
                        //             //                       pw.Text(
                        //             //                         "Contact No.: $CompanyContact",
                        //             //                         style: pw
                        //             //                             .TextStyle(
                        //             //                           color:
                        //             //                               PdfColors
                        //             //                                   .black,
                        //             //                           fontSize: 16,
                        //             //                         ),
                        //             //                       ),
                        //             //                       pw.Text(
                        //             //                         "GSTIN: $companyGst",
                        //             //                         style: pw
                        //             //                             .TextStyle(
                        //             //                           color:
                        //             //                               PdfColors
                        //             //                                   .black,
                        //             //                           fontSize: 16,
                        //             //                         ),
                        //             //                       ),
                        //             //                     ],
                        //             //                   ),
                        //             //                 ),
                        //             //               ),
                        //             //               pw.Expanded(
                        //             //                 flex: 2,
                        //             //                 child: pw.Column(
                        //             //                   crossAxisAlignment: pw
                        //             //                       .CrossAxisAlignment
                        //             //                       .end,
                        //             //                   children: [
                        //             //                     pw.SizedBox(
                        //             //                       height: 30,
                        //             //                     ),
                        //             //                     pw.Container(
                        //             //                       child: pw.Text(
                        //             //                           "Invoice No.: $invoiceNo"),
                        //             //                     ),
                        //             //                     pw.Container(
                        //             //                       child: pw.Text(
                        //             //                           "Date: $invoiceDate"),
                        //             //                     ),
                        //             //                     pw.SizedBox(
                        //             //                       height: 30,
                        //             //                     ),
                        //             //                   ],
                        //             //                 ),
                        //             //               ),
                        //             //             ],
                        //             //           ),
                        //             //         ),
                        //             //       ],
                        //             //     ),
                        //             //   ),
                        //             // ],
                        //             children: [
                        //               //TODO Tax Invoice
                        //               pw.Text(
                        //                 "Tax Invoice",
                        //                 style: pw.TextStyle(
                        //                   fontWeight: pw.FontWeight.bold,
                        //                   fontSize: 25,
                        //                 ),
                        //               ),
                        //               // TODO  Image Company Name row
                        //               pw.Divider(
                        //                 color: PdfColors.black,
                        //                 thickness: 2,
                        //               ),
                        //               pw.Row(
                        //                 children: [
                        //                   pw.Container(
                        //                     color: PdfColors.red,
                        //                     height: h * 0.3,
                        //                     width: w * 0.5,
                        //                     child:
                        //                   ),
                        //                 ],
                        //               ),
                        //             ],
                        //           );
                        //         }),
                        //   );
                        //   await Printing.layoutPdf(onLayout: (format) {
                        //     return pdf.save();
                        //   });
                        // },
                        child: const Text("   SAVE   "),
                      ),
                      // Text("${Globel.amount}"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row gettextfield({required int i, required Row row}) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 5),
          height: 50,
          width: 150,
          child: TextField(
            controller: allitemcontrollers[i],
            decoration: InputDecoration(
              hintText: "Item name",
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          margin: const EdgeInsets.only(right: 5, top: 5, bottom: 5),
          height: 50,
          width: 80,
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: allqtycontrollers[i],
            decoration: InputDecoration(
              hintText: "Qty",
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        SizedBox(
          height: 50,
          width: 80,
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: allratecontrollers[i],
            decoration: InputDecoration(
              hintText: "rate",
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
