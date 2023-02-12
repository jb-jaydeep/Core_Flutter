import 'package:flutter/material.dart';
import 'package:age_calculator/screen/homepage.dart';

void main() {
  runApp(
    const Myapp(),
  );
}

class  Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),

    );
  }
}
