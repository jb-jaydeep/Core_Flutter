import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Launch Button"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Align(
          child: Container(
            height: 200,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
            shape: BoxShape.circle,
              color: Colors.black,
              boxShadow: [
                BoxShadow(
                  blurRadius: 40,
                  color: Colors.green.shade800,
                ),
                BoxShadow(
                  spreadRadius: 5,
                  color: Colors.green.shade800,
                ),
                BoxShadow(
                  spreadRadius: 1,
                  color: Colors.white,
                ),
              ],
            ),
            child: Text("Go",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),),
          ),


        ),
        backgroundColor: Colors.black,
      ),
    ),
  );
}
