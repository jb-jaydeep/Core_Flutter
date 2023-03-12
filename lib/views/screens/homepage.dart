import 'dart:math';
import 'package:dice_app/views/screens/image_utils.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

Random r = Random();
int a = 1, b = 1, ans = 0;

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    a = r.nextInt(6) + 1;
    b = r.nextInt(6) + 1;
    ans = a + b;

    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
        title: const Text(
          "Dice App",
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.blue.shade200,
          child: Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 1,
                child: Text(
                  "Total Amount :$ans",
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16),
                      width: w * 0.3,
                      height: h * 0.2,
                      child: Image.asset("$imagePath$a.png"),
                    ),
                    Container(
                      width: w * 0.3,
                      height: h * 0.2,
                      margin: const EdgeInsets.all(16),
                      child: Image.asset("$imagePath$b.png"),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    setState(() {});
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: w * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade300,
                      border: Border.all(color: Colors.blue.shade900, width: 4),
                    ),
                    child: const Text(
                      "Roll Dice",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
