import 'package:flutter/material.dart';
void main(){

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const Text("Mission of RNW"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Align(
          child: Container(
            height: 100,
            width: 320,
            alignment: Alignment.center,
            decoration:  BoxDecoration(
              color: Colors.red[200],
              border: const Border(
                left: BorderSide(
                  color: Colors.red,
                  width: 20,
                )
              ),
            ),
            child:  RichText(
              textAlign: TextAlign.start,
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "\nShaping \"skills\" for \"scaling\" higher\n",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  ),
                  ),
                  TextSpan(
                    text: "- RNW\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      height: 1.5,
                    ),
                  ),
                ],

                ),
              ),
              ),
              ),
            ),
          ),

  );
}