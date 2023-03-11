
import 'package:e_commerce_app/views/screens/Cart_page.dart';
import 'package:e_commerce_app/views/screens/Final_Page.dart';
import 'package:e_commerce_app/views/screens/detail_page.dart';
import 'package:e_commerce_app/views/screens/first_page.dart';
import 'package:e_commerce_app/views/screens/order_page.dart';
import 'package:e_commerce_app/views/screens/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const Myapp(),
  );
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    routes: {
        '/':(context) => const FirstPage(),
      'page2':(context) => const SecondPage(),
      'page3':(context)=> const DetailPage(),
      'page4':(context)=> const CartPage(),
      'page5':(context)=> const OrderPage(),
      'page6':(context)=> const FinalPage(),


    },
    );
  }
}
