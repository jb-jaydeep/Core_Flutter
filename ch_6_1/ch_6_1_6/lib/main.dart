import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green.shade900,
          title: const Text("Letter Cover",style: TextStyle(
            fontSize: 25,
          ),
          ),
        ),
        body: Align(
          child: Container(
            width: 300,
            height: 300,
            decoration:  BoxDecoration(
              border: Border.symmetric(
                horizontal:  BorderSide(
                  color: Colors.green.shade600,
                  width: 40,
                ),
                vertical: BorderSide(
                  color: Colors.green.shade700,
                  width: 40,
                ),
              ),
              color: Colors.green.shade900,
            ),
          ),
        ),
      ),
    ),
  );
}