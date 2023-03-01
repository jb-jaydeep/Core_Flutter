
import 'package:ch_10_2/views/screens/desPage.dart';
import 'package:ch_10_2/views/screens/homepage.dart';
import 'package:flutter/material.dart';

void main ( ) {
  runApp(const Myapp(),);

}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Data;
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
     //  routes: {
     //    '/': (context)=> homePage(),
     //    'page1':(context)=>  desPage(),
     //  },
    );
  }
}
