import 'dart:math';

import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

String lottary = "";
List<Map> myColorlist = List.generate(
  18,
  (index) => {
    'app-barColor': Colors.primaries[index % 18][200],
    'letterColor': Colors.primaries[index % 18][700],
    'buttonColor': Colors.primaries[index % 18][200],
    'containerColor': Colors.primaries[index % 18][400]
  },
);

int index = 0;
Random r = Random();
int a = 1, b = 1, c = 1;
int l = a+b+c;

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: myColorlist[index]['app-barColor'],
        title: const Text(
          "Lottery App",
          style: TextStyle(
              fontSize: 21, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                index = (index + 1) % myColorlist.length;
              });
            },
            icon: const Icon(
              Icons.change_circle_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Center(
        child: SizedBox(
          height: h,
          width: w,
          child: Column(
            children: [
              const Spacer(),
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  height: h * 0.2,
                  width: w,
                  color: myColorlist[index]['containerColor'],
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(16),
                        height: h * 0.1,
                        width: h * 0.1,
                        decoration: BoxDecoration(
                          color: myColorlist[index]['letterColor'],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "$a",
                          style: const TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        height: h * 0.1,
                        width: h * 0.1,
                        margin: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: myColorlist[index]['letterColor'],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "$b",
                          style: const TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(16),
                        height: h * 0.1,
                        width: h * 0.1,
                        decoration: BoxDecoration(
                          color: myColorlist[index]['letterColor'],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "$c",
                          style: const TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  width: w,
                  color: myColorlist[index]['app-barColor'],
                  child: Text(
                    lottary,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      a = r.nextInt(9) + 1;
                      b = r.nextInt(9) + 1;
                      c = r.nextInt(9) + 1;
                      if (a == 7 && b == 8 && c == 6) {
                        lottary = "You got a lottery";
                      } else if (a == b && b == c && c == a) {
                        lottary = "You got a lottery";
                      }else if (l==11) {
                        lottary = "You got a lottery";
                      } else {
                        lottary = "Try again to win lottery";
                      }
                    });
                  },
                  child: Container(
                    width: w * 0.4,
                    decoration: BoxDecoration(
                      color: myColorlist[index]['buttonColor'],
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Get Lottery",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
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
