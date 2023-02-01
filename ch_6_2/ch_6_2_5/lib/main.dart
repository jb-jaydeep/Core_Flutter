import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("An Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Align(
          child: Container(
            height: 200,
            width: 300,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(
                width: 2,
                color: Colors.white,
              ),
              boxShadow:  const [
                BoxShadow(
                  spreadRadius: 2,
                  color: Colors.white,
                ),
              ],
              gradient:const LinearGradient(
                colors: [
                  Colors.orange,
                  Colors.white,
                  Colors.white,
                  Colors.green,
                ],
                stops: [0,0.4,0.6,1],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),

            child: const Text("✳️",
              style: TextStyle(
                color: Color(0xff13005A),
                fontSize: 60,
              ),
            ),
          ),
      ),
        backgroundColor: Colors.blue,
    ),
    ),
  );
}
