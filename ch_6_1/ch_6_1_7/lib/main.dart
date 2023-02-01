import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text("Opened Doors",style: TextStyle(
            fontSize: 25,
          ),
          ),
        ),
        body: Align(
          child: Container(
            width: 300,
            height: 300,
            decoration: const BoxDecoration(
              color: Colors.black,
              border: Border.symmetric(
                vertical: BorderSide(
                  color: Colors.white70,
                  width: 90,
                ),
                horizontal:  BorderSide(
                  color: Colors.black,
                  width: 40,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}