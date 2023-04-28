import 'package:flutter/material.dart';
import 'package:multiplication_table/screens/homePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => homePage(),
    },
  ));
}
