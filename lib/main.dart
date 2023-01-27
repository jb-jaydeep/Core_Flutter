import 'package:flutter/material.dart';

void main() {
  Color bgc = Colors.red;
  String f = "Red & White";
  String s = "Multimedia Education";
  String t = "Shaping \"Skills\" for \"scaling\" higher...!!!";
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My RNW"),
          centerTitle: true,
          backgroundColor: bgc,
        ),
        body: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              TextSpan(
                text: "$f\n",
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 75,
                  fontFamily: "arial",
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text: "$s\n",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 35,
                  fontFamily: "arial",
                ),
              ),
              TextSpan(
                text: "$t\n",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontFamily: "arial",
                ),
              ),
            ]),
          ),
        ),
      ),
    ),
  );
}
