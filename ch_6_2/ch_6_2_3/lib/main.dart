import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("A Shadow Button"),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Align(
          child: Container(
            height: 50,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 30,
                  color: Colors.teal,
                ),
                BoxShadow(
                  spreadRadius: 1,
                  color: Colors.teal,
                ),
              ],
            ),

            child: const Text("Tap",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),

          ),

        ),

        backgroundColor: Colors.white,
      ),

    ),

  );
}
