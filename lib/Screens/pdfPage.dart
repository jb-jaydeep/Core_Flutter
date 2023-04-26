import 'dart:io';

import 'package:flutter/material.dart';
import 'package:invoice_generator/Screens/utils/All_Utils.dart';

class PdfPage extends StatefulWidget {
  const PdfPage({Key? key}) : super(key: key);

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("PdfPage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Tax Invoice",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: h * 0.15,
                    width: w * 0.3,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Company Name",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        "Company Contact",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text(
                        "Company Gst",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text(
                        "Company Address",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text(
                        "Company Address1",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
                thickness: 2,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: h * 0.03,
                        width: w * 0.6,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: Text("Bill To"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: h * 0.11,
                        width: w * 0.6,
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.black,
                        )),
                        child: Column(
                          children: [
                            Text("party Name"),
                            Text("party Address"),
                            Text("party contact"),
                            Text("party Gst"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: h * 0.1,
                    width: w * 0.32,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Invoice No.:"),
                        Text("Date:"),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
                thickness: 2,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "DESCRIPTION",
                      ),
                      SizedBox(
                        width: 110,
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                      ...Globel.allitems.map((e) => Text(e)).toList(),
                      SizedBox(
                        width: 110,
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "QUNTITY",
                      ),
                      SizedBox(
                        width: 90,
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                      ...Globel.allqty.map((e) => Text("${e}")).toList(),
                      SizedBox(
                        width: 100,
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "RATE",
                      ),
                      SizedBox(
                        width: 80,
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                      ...Globel.allrate.map((e) => Text("${e}")).toList(),
                      SizedBox(
                        width: 50,
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "AMOUNT",
                      ),
                      SizedBox(
                        width: 92,
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                      ...Globel.amount.map((e) => Text("${e}")).toList(),
                      SizedBox(
                        width: 92,
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
