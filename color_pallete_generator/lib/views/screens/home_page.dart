import 'dart:math';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {

    Random r = Random();
    int n = r.nextInt(9)+1;

      return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
           // const Spacer(),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: const [
                    Text(
                      "Color Palette",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      "Generator",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 10,
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                alignment: Alignment.center,
                child: Column(
                  children: List.generate(n , (index) => Expanded(
                    flex: 1,
                    child: Container(
                      height: 150,
                      width: 200,
                      alignment: Alignment.center,
                      color: Colors.primaries[index],
                    ),
                  ),),
                ),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: (){
                  setState(() {

                  });
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                 child: const Text("Generate",style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 28,
                   color: Colors.blueAccent,
                 ),),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),

          ],
        ),
      ),
    );
  }
}
