import 'package:digi_clock/screens/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => homePage(),
    },
  ));
}
