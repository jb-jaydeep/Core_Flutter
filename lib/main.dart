import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Flutter App",),
          leading: const Icon(Icons.menu),
        ),
        body:  const Center(
          child: Text("Red & White",
          style: TextStyle(
            fontSize: 40,
            color: Colors.redAccent,
            letterSpacing: 1.5,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.double,
            decorationColor: Colors.yellow,
           // decorationThickness: 1,
          ),

          ),
        ),
        backgroundColor: Colors.black,
      ),

    ),
  );
}