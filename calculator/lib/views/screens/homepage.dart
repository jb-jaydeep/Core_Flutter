import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int a = 1;
  int b = 2;
  int c = 3;
  int d = 4;
  int e = 5;
  int f = 6;
  int g = 7;
  int z = 8;
  int i = 9;
  int j = 0;
  int k = 00;


  double firstVal = 0;
  double secondVal = 0;
  String symbol = "";


  String p = "+";
  String q = "-";
  String r = "*";
  String y = "/";
  String t = "%";


  String x = ".";


  String ans = "";
  double total = 0;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      body:Center(
        child: Container(
          width: w,
          height: h,
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                color: Colors.white,
                  alignment: Alignment.bottomRight,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:  ans,
                          style: const TextStyle(
                            color: Color(0xff8D8D8D),
                            fontSize: 30,
                          ),
                        ),
                        TextSpan(
                          text: "\n\n $total  ",
                          style: const TextStyle(
                            color: Color(0xff2E2D32),
                            fontSize: 60,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Text("_____________________________________________________________"),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 4,
                              child:InkWell(
                                onTap: () {
                                  setState(() {
                                    ans = "";
                                    total = 0;
                                    firstVal = 0;
                                    secondVal = 0;
                                    symbol = "";
                                  });
                                },
                                child: Container(
                                  margin: const EdgeInsets.all(5),
                                  alignment: Alignment.center,
                                  width: w*0.1,
                                  height: h*0.1,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(30),

                                  ),
                                  child: const Text("AC",style: TextStyle(
                                    color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21,
                                  ),

                                  ),

                                ),
                              ),
                          ),
                          Expanded(
                            flex: 2,
                            child:InkWell(
                              onTap: () {
                                setState(() {
                                  ans = ans + (t).toString();
                                  symbol = t;
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                alignment: Alignment.center,
                                width: w*0.05,
                                height: h*0.1,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),

                                ),
                                child: const Text("%",style: TextStyle(
                                  color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 21,
                                ),

                                ),

                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child:InkWell(
                              onTap: () {
                                setState(() {
                                  ans = ans + (y).toString();
                                  symbol = y;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(5),
                                // width: w*0.1,
                                height: h*0.1,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),

                                ),
                                child: const Text("/",style: TextStyle(
                                  color: Colors.red,fontWeight: FontWeight.bold,fontSize: 21,
                                ),

                                ),

                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child:InkWell(
                              onTap: (){
                                setState(() {
                                  ans = ans +  (g).toString();
                                  if (symbol == "+" ||
                                      symbol == "-" ||
                                      symbol == "*" ||
                                      symbol == "/" ||
                                      symbol == "%") {
                                    firstVal = (firstVal * 10) + g;
                                  } else {
                                    secondVal = (secondVal * 10) + g;
                                  }
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                alignment: Alignment.center,
                                width: w*0.1,
                                height: h*0.1,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),

                                ),
                                child: const Text("7",style: TextStyle(
                                  color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21,
                                ),

                                ),

                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child:InkWell(
                              onTap: (){
                                setState(() {
                                  ans = ans +  (z).toString();
                                  if (symbol == "+" ||
                                      symbol == "-" ||
                                      symbol == "*" ||
                                      symbol == "/" ||
                                      symbol == "%") {
                                    firstVal = (firstVal * 10) + z;
                                  } else {
                                    secondVal = (secondVal * 10) + z;
                                  }
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                alignment: Alignment.center,
                                width: w*0.05,
                                height: h*0.1,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),

                                ),
                                child: const Text("8",style: TextStyle(
                                  color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21,
                                ),

                                ),

                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child:InkWell(
                              onTap: (){
                                setState(() {
                                  ans = ans +  (i).toString();
                                  if (symbol == "+" ||
                                      symbol == "-" ||
                                      symbol == "*" ||
                                      symbol == "/" ||
                                      symbol == "%") {
                                    firstVal = (firstVal * 10) + i;
                                  } else {
                                    secondVal = (secondVal * 10) + i;
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(5),
                                // width: w*0.1,
                                height: h*0.1,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),

                                ),
                                child: const Text("9",style: TextStyle(
                                  color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21,
                                ),

                                ),

                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child:InkWell(
                              onTap: () {
                                setState(() {
                                  ans = ans + (r).toString();
                                  symbol = r;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(5),
                                // width: w*0.1,
                                height: h*0.1,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),

                                ),
                                child: const Text("*",style: TextStyle(
                                  height: 2,
                                  color: Colors.red,fontWeight: FontWeight.bold,fontSize: 21,
                                ),

                                ),

                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child:InkWell(
                              onTap: (){
                                setState(() {
                                  ans = ans +  (d).toString();
                                  if (symbol == "+" ||
                                      symbol == "-" ||
                                      symbol == "*" ||
                                      symbol == "/" ||
                                      symbol == "%") {
                                    firstVal = (firstVal * 10) + d;
                                  } else {
                                    secondVal = (secondVal * 10) + d;
                                  }
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                alignment: Alignment.center,
                                width: w*0.1,
                                height: h*0.1,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),

                                ),
                                child: const Text("4",style: TextStyle(
                                  color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21,
                                ),

                                ),

                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child:InkWell(
                              onTap: (){
                                setState(() {
                                  ans = ans +  (e).toString();
                                  if (symbol == "+" ||
                                      symbol == "-" ||
                                      symbol == "*" ||
                                      symbol == "/" ||
                                      symbol == "%") {
                                    firstVal = (firstVal * 10) + e;
                                  } else {
                                    secondVal = (secondVal * 10) + e;
                                  }
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                alignment: Alignment.center,
                                width: w*0.05,
                                height: h*0.1,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),

                                ),
                                child: const Text("5",style: TextStyle(
                                  color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21,
                                ),

                                ),

                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child:InkWell(
                              onTap: (){
                                setState(() {
                                  ans = ans +  (f).toString();
                                  if (symbol == "+" ||
                                      symbol == "-" ||
                                      symbol == "*" ||
                                      symbol == "/" ||
                                      symbol == "%") {
                                    firstVal = (firstVal * 10) + f;
                                  } else {
                                    secondVal = (secondVal * 10) + f;
                                  }
                                });
                              },

                              child: Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(5),
                                // width: w*0.1,
                                height: h*0.1,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),

                                ),
                                child: const Text("6",style: TextStyle(
                                  color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21,
                                ),

                                ),

                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child:InkWell(
                              onTap: () {
                                setState(() {
                                  ans = ans + (q).toString();
                                  symbol = q;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(5),
                                // width: w*0.1,
                                height: h*0.1,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),

                                ),
                                child: const Text("-",style: TextStyle(
                                  height: 0.1,
                                  color: Colors.red,fontWeight: FontWeight.bold,fontSize: 21,
                                ),

                                ),

                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child:InkWell(
                              onTap: (){
                                setState(() {
                                  ans = ans +  (a).toString();
                                  if (symbol == "+" ||
                                      symbol == "-" ||
                                      symbol == "*" ||
                                      symbol == "/" ||
                                      symbol == "%") {
                                    firstVal = (firstVal * 10) + a;
                                  } else {
                                    secondVal = (secondVal * 10) + a;
                                  }
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                alignment: Alignment.center,
                                width: w*0.1,
                                height: h*0.1,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),

                                ),
                                child: const Text("1",style: TextStyle(
                                  color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21,
                                ),

                                ),

                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child:InkWell(
                              onTap: (){
                                setState(() {
                                  ans = ans +  (b).toString();
                                  if (symbol == "+" ||
                                      symbol == "-" ||
                                      symbol == "*" ||
                                      symbol == "/" ||
                                      symbol == "%") {
                                    firstVal = (firstVal * 10) + b;
                                  } else {
                                    secondVal = (secondVal * 10) + b;
                                  }
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                alignment: Alignment.center,
                                width: w*0.05,
                                height: h*0.1,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),

                                ),
                                child: const Text("2",style: TextStyle(
                                  color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21,
                                ),

                                ),

                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child:InkWell(
                              onTap: (){
                                setState(() {
                                  ans = ans +  (c).toString();
                                  if (symbol == "+" ||
                                      symbol == "-" ||
                                      symbol == "*" ||
                                      symbol == "/" ||
                                      symbol == "%") {
                                    firstVal = (firstVal * 10) + c;
                                  } else {
                                    secondVal = (secondVal * 10) + c;
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(5),
                                // width: w*0.1,
                                height: h*0.1,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),

                                ),
                                child: const Text("3",style: TextStyle(
                                  color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21,
                                ),

                                ),

                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child:InkWell(
                              onTap: () {
                                setState(() {
                                  ans = ans + (p).toString();
                                  symbol = p;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(5),
                                // width: w*0.1,
                                height: h*0.1,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),

                                ),
                                child: const Text("+",style: TextStyle(
                                  height: 1,
                                  color: Colors.red,fontWeight: FontWeight.bold,fontSize: 21,
                                ),

                                ),

                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child:InkWell(
                              onTap: () {
                                setState(() {
                                  ans = ans + (k).toString();
                                  if (symbol == "+" ||
                                      symbol == "-" ||
                                      symbol == "*" ||
                                      symbol == "/" ||
                                      symbol == "%") {
                                    firstVal = (firstVal * 10) + k;
                                  } else {
                                    secondVal = (secondVal * 10) + k;
                                  }
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                alignment: Alignment.center,
                                width: w*0.1,
                                height: h*0.1,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),

                                ),
                                child: const Text("00",style: TextStyle(
                                  color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21,
                                ),

                                ),

                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child:InkWell(
                              onTap: () {
                                setState(() {
                                  ans = ans + (j).toString();
                                  if (symbol == "+" ||
                                      symbol == "-" ||
                                      symbol == "*" ||
                                      symbol == "/" ||
                                      symbol == "%") {
                                    firstVal = (firstVal * 10) + j;
                                  } else {
                                    secondVal = (secondVal * 10) + j;
                                  }
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.all(5),
                                alignment: Alignment.center,
                                width: w*0.05,
                                height: h*0.1,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(30),

                                ),
                                child: const Text("0",style: TextStyle(
                                  color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21,
                                ),

                                ),

                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child:Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(5),
                              // width: w*0.1,
                              height: h*0.1,
                              decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(30),

                              ),
                              child: const Text(".",style: TextStyle(
                                color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21,
                              ),

                              ),

                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child:InkWell(
                              onTap: () {
                                setState(() {
                                  if (symbol == "+") {
                                    total = firstVal + secondVal;
                                  } else if (symbol == "-") {
                                    total = secondVal - firstVal;
                                  } else if (symbol == "*") {
                                    total = firstVal * secondVal;
                                  } else if (symbol == "/") {
                                    total = secondVal ~/ firstVal as double;
                                  } else if (symbol == "%") {
                                    total = firstVal % secondVal;
                                  } else {
                                    total = 0;
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(5),
                                // width: w*0.1,
                                height: h*0.1,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(50),

                                ),
                                child: const Text("=",style: TextStyle(
                                  height: 1,
                                  color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21,
                                ),

                                ),

                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
