import 'dart:math';

import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

int num = 1;
int i = 0;
int product = 0;
List<Row> multiTable() {
  List<Row> Rows = [];

  if (num == null) {
    return Rows;
  }

  for (i = 1; i <= 10; i++) {
    product = num * i;

    Rows.add(
      Row(
        children: [
          Text(
            '$num x $i',
            style: TextStyle(fontSize: 16.0),
          ),
          Text(
            ' = $product',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }

  return Rows;
}

TextEditingController textFieldController = TextEditingController();

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("MultiPlication Table"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              onChanged: (val) {
                // setState(() {
                //   num = int.parse(val);
                // });
                num = int.parse(val);
              },
              keyboardType: TextInputType.number,
              controller: textFieldController,
              decoration: InputDecoration(
                hintText: "Enter a no. to print it's table",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushNamed(
                    'tablePage',
                    arguments: multiTable(),
                  );
                });
              },
              child: Text("Save"),
            ),
            ...multiTable(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  textFieldController.clear();
                  num = 1;
                });
              },
              child: Text("clear"),
            ),
          ],
        ),
      ),
    );
  }
}
