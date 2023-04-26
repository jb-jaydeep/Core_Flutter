import 'package:flutter/material.dart';
import 'package:invoice_generator/Screens/HomePage.dart';

import 'Screens/Item_Page.dart';
import 'Screens/PartyDetailPage.dart';
import 'Screens/Splash_screen.dart';
import 'Screens/pdfPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'splash_screen',
    routes: {
      'splash_screen': (context) => const SplashScreen(),
      '/': (context) => homePage(),
      'PartyDetailPage': (context) => PartyDetailPage(),
      'itemPage': (context) => Items(),
      'PdfPage': (context) => PdfPage(),
    },
  ));
}

