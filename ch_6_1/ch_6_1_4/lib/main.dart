import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.brown,
          title: const Text("Mashal",style: TextStyle(
           fontSize: 25,
          ),
          ),
        ),
        body: Align(
          child: Container(
            width: 200,
            height: 300,

            alignment: const Alignment(0,-2.4),
            decoration: const BoxDecoration(
              color: Colors.brown,
              border: Border.symmetric(
                vertical: BorderSide(
                  color: Colors.white,
                  width: 50,
                ),
                horizontal:  BorderSide(
                  color: Color(0xffAD8E70),
                  width: 40,
                ),
              ),

            ),
            child: const Text("🔥",style: TextStyle(
            fontSize: 60,
            ),
            ),
          ),
        ),
      ),
    ),
  );
}