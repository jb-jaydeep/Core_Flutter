import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          centerTitle: true,
          backgroundColor: Colors.green[500],
        ),
        body:  Align(
          child: Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              border: Border.all(
                width: 25,
                color: Colors.green.withOpacity(0.5),
              ),
              color: Colors.green[800],
            ),

            alignment: Alignment.center,
            child:const Text("oooo",
                style: TextStyle(
                 fontSize: 100,
                  letterSpacing: -30,
                  color:Colors.black38,
                ),
            ),
          ),
        ),
        backgroundColor: Colors.green[900],
      ),
    ),
  );
}