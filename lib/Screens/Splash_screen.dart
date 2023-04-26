import 'dart:async';
import 'package:flutter/material.dart';
import 'package:invoice_generator/Screens/utils/All_Utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();

    Duration duration = const Duration(seconds: 3);

    Timer(duration, () {
      Navigator.of(context).pushReplacementNamed('/');
    });
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(
              flex: 4,
            ),
            Expanded(
                flex: 10,
                child: Image.asset(imagePath + SplashImage)),
            const Spacer(flex: 5,),
            Expanded(
              flex: 1,
              child: SizedBox(width: w * 0.4,
                child: const LinearProgressIndicator(
                  color: Colors.redAccent,
                ),
              ),
            ),
            const Spacer(
              flex: 3,
            ),
            const Expanded(
              flex: 2,
              child: Text(
                "Present By",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900,),
              ),
            ),
            const Spacer(),
            Expanded(
              flex:2 ,
              child: const Text(
                " J.B.",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900,color: Colors.red),
              ),
            ),
            const Spacer(),

          ],
        ),
      ),
    );
  }
}