import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contactInfoPage_controller.dart';
class AchievementsPage extends StatefulWidget {
  const AchievementsPage({Key? key}) : super(key: key);

  @override
  State<AchievementsPage> createState() => _AchievementsPageState();
}
class _AchievementsPageState extends State<AchievementsPage> {
  List <TextEditingController> achievments_textField = [];
  @override
  void initState() {
    super.initState();
    achievments_textField.add(TextEditingController());
    achievments_textField.add(TextEditingController());
    Achievements.clear();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        toolbarHeight: 150,
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              setState(() {
                achievments_textField.forEach((e) {Achievements.add(e.text );});
              });
              Navigator.of(context).pop();
            },
            child: Icon(CupertinoIcons.back)),
        title: Text(
          "Achievements",
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Padding(
          padding: EdgeInsets.all(16),
          child: Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.topCenter,
            width: double.infinity,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Enter Achievements",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ...achievments_textField.map((e) => Row(
                    children: [
                      Expanded(flex: 9,
                        child: TextField(
                          controller: e,
                          decoration: InputDecoration(
                                      hintText: "Exceeded sales 17% average",
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                        ),
                      ),
                      Expanded(
                            flex: 2,
                            child: IconButton(
                              icon: Icon(CupertinoIcons.delete),
                              onPressed: () {
                                setState(() {
                                  achievments_textField.remove(e);
                                });
                              },
                            ),
                          ),
                    ],
                  ),).toList(),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            achievments_textField.add(TextEditingController());
                          });
                        },
                        child: Icon(
                          Icons.add,
                          color: Colors.grey,
                        ),
                      )),
                ],
              ),
            ),
          )),
    );

  }
}
