import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Gredient Button"),
          centerTitle: true,
          backgroundColor: const Color(0xff3B185F),
        ),
        body: Align(
          child: Container(
            height: 50,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20),
              boxShadow:  const [
              BoxShadow(
              spreadRadius: 2,
              color: Colors.white,
            ),
              ],
              gradient: const LinearGradient(
                colors: [
                  Colors.pink,
                  Colors.purpleAccent,
                ],
              ),
            ),

            child: const Text("Flutter",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),

          ),

        ),

        backgroundColor: Color(0xff3B185F),
      ),

    ),

  );
}
