import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(' 🛍 List of Fruits'),
          centerTitle: true,
          backgroundColor: const Color(0xff02ab86),
        ),
        body: Center(
          child: RichText(
            textAlign: TextAlign.start,
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "🍎 A p p l e\n",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontFamily: "arial",
                  ),
                ),
                TextSpan(
                  text: "🍇 G r e p s\n",
                  style: TextStyle(
                    color: Color(0xffc35ae6),
                    fontSize: 30,
                    height: 1.5,
                    fontFamily: "arial",
                  ),
                ),
                TextSpan(
                  text: "🍒 C h e r r y\n",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 30,
                    height: 1.5,
                    fontFamily: "arial",
                  ),
                ),
                TextSpan(
                  text: "🍓 S t r a w b e r r y\n",
                  style: TextStyle(
                    color: Color(0xffcc048d),
                    fontSize: 30,
                    height: 1.5,
                    fontFamily: "arial",
                  ),
                ),
                TextSpan(
                  text: "🥭 M a n g o\n",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 30,
                    height: 1.5,
                    fontFamily: "arial",
                  ),
                ),
                TextSpan(
                  text: "🍍 P i n e a p p l e\n",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    height: 1.5,
                    fontFamily: "arial",
                  ),
                ),
                TextSpan(
                  text: "🍋 L e m o n\n",
                  style: TextStyle(
                    color: Color(0xfff7d023),
                    fontSize: 30,
                    height: 1.5,
                    fontFamily: "arial",
                  ),
                ),
                TextSpan(
                  text: "🍉 W a t e r m e l o n\n",
                  style: TextStyle(
                    color: Color(0xfa7e36bf),
                    fontSize: 30,
                    height: 1.5,
                    fontFamily: "arial",
                  ),
                ),
                TextSpan(
                  text: "🥥 C o c o n u t\n",
                  style: TextStyle(
                    color: Color(0xff361e00),
                    fontSize: 30,
                    height: 1.5,
                    fontFamily: "arial",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
