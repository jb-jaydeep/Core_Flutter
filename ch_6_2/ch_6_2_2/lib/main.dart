import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dark Shadow Button"),
          centerTitle: true,
          backgroundColor: Colors.red.shade500,
        ),
        body: Align(
          child: Container(
            height: 50,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.red,
                ),
                BoxShadow(
                  spreadRadius: 1,
                  color: Colors.red,
                ),
              ],
              ),

            child: const Text("Tap",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),

            ),

          ),

        backgroundColor: Colors.black,
        ),

      ),

  );
}
