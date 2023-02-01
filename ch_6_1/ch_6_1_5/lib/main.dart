import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: const Text("Letter Cover",style: TextStyle(
            fontSize: 25,
          ),
          ),
        ),
        body: Align(
          child: Container(
            width: 300,
            height: 300,
            decoration: const BoxDecoration(
              color: Colors.green,
              border: Border.symmetric(
                horizontal:  BorderSide(
                  color: Colors.greenAccent,
                  width: 120,
                ),
                vertical: BorderSide(
                  color: Colors.green,
                  width: 120,
              ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}