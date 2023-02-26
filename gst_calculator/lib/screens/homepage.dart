import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String oriPrice = "";
  String dot = ".";
  double finalPrice = 00;
  double Gst = 00;

  int a = 7;
  int b = 4;
  int c = 1;
  int d = 0;
  int e = 8;
  int f = 5;
  int g = 2;
  int i = 9;
  int j = 6;
  int k = 3;

  Color gn3 = Colors.deepOrange;
  Color gn5 = Colors.deepOrange;
  Color gn12 = Colors.deepOrange;
  Color gn18 = Colors.deepOrange;
  Color gn28 = Colors.deepOrange;

  Color gall = Colors.grey.shade200;

  Color g3 = Colors.grey.shade200;
  Color g5 = Colors.grey.shade200;
  Color g12 = Colors.grey.shade200;
  Color g18 = Colors.grey.shade200;
  Color g28 = Colors.grey.shade200;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          height: h,
          width: w,
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(5),
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.grey.shade200,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // original price
                      Container(
                        alignment: Alignment.center,
                        color: Colors.grey.shade200,

                        height: h * 0.05,
                        //width: w*0.4,
                        child: const Text(
                          "ORIGINAL PRICE",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        color: Colors.grey.shade200,
                        height: h * 0.05,
                        child: Text(oriPrice),
                      ),
                      Container(
                        alignment: Alignment.center,
                        color: Colors.grey.shade200,

                        height: h * 0.05,
                        // width: w*0.1,
                        child: const Text(
                          "Rs",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      color: Colors.grey.shade200,

                      height: h * 0.05,
                      // width: w*0.9,
                      child: const Text(
                        "GST",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // gst percentage
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                g5 = gall;
                                g12 = gall;
                                g18 = gall;
                                g28 = gall;
                                g3 = gn3;

                                finalPrice = (double.parse(oriPrice) +
                                    (double.parse(oriPrice) * 3) / 100);
                                Gst = finalPrice - (double.parse(oriPrice));
                              });
                            },
                            child: Container(
                              height: h * 0.05,
                              alignment: Alignment.center,
                              color: g3,
                              child: const Text(
                                "3%",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                g3 = gall;
                                g12 = gall;
                                g18 = gall;
                                g28 = gall;
                                g5 = gn5;
                                finalPrice = (double.parse(oriPrice) +
                                    (double.parse(oriPrice) * 5) / 100);
                                Gst = finalPrice - (double.parse(oriPrice));
                              });
                            },
                            child: Container(
                              height: h * 0.05,
                              alignment: Alignment.center,
                              color: g5,
                              child: const Text(
                                "5%",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                g5 = gall;
                                g3 = gall;
                                g18 = gall;
                                g28 = gall;
                                g12 = gn12;
                                finalPrice = (double.parse(oriPrice) +
                                    (double.parse(oriPrice) * 12) / 100);
                                Gst = finalPrice - (double.parse(oriPrice));
                              });
                            },
                            child: Container(
                              height: h * 0.05,
                              alignment: Alignment.center,
                              color: g12,
                              child: const Text(
                                "12%",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                g5 = gall;
                                g12 = gall;
                                g3 = gall;
                                g28 = gall;
                                g18 = gn18;
                                finalPrice = (double.parse(oriPrice) +
                                    (double.parse(oriPrice) * 18) / 100);
                                Gst = finalPrice - (double.parse(oriPrice));
                              });
                            },
                            child: Container(
                              height: h * 0.05,
                              alignment: Alignment.center,
                              color: g18,
                              child: const Text(
                                "18%",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                g5 = gall;
                                g12 = gall;
                                g18 = gall;
                                g3 = gall;
                                g28 = gn28;
                                finalPrice = (double.parse(oriPrice) +
                                    (double.parse(oriPrice) * 28) / 100);
                                Gst = finalPrice - (double.parse(oriPrice));
                              });
                            },
                            child: Container(
                              height: h * 0.05,
                              alignment: Alignment.center,
                              color: g28,
                              child: const Text(
                                "28%",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
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
              const Spacer(),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.grey.shade200,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Final price
                      Container(
                        alignment: Alignment.center,
                        color: Colors.grey.shade200,

                        height: h * 0.05,
                        //width: w*0.4,
                        child: const Text(
                          "FINAL PRICE",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        color: Colors.grey.shade200,
                        height: h * 0.05,
                        // width: w*0.4,
                        child: Text(
                          finalPrice.toStringAsFixed(3),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        color: Colors.grey.shade200,

                        height: h * 0.05,
                        // width: w*0.1,
                        child: const Text(
                          "Rs",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //cgst/sgst
                    Container(
                      alignment: Alignment.center,
                      color: Colors.grey.shade200,

                      height: h * 0.05,
                      // width: w*0.23,
                      child: const Text(
                        "CGST/SGST",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      color: Colors.grey.shade200,

                      height: h * 0.05,
                      //width: w*0.23,
                      child: Text(
                        Gst.toStringAsFixed(3),
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 16,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(
                              () {
                                oriPrice = oriPrice + a.toString();
                              },
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: h * 0.1,
                            width: h * 0.1,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: const Text(
                              "7",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              oriPrice = oriPrice + b.toString();
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: h * 0.1,
                            width: h * 0.1,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: const Text(
                              "4",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              oriPrice = oriPrice + c.toString();
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: h * 0.1,
                            width: h * 0.1,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: const Text(
                              "1",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              oriPrice = oriPrice + d.toString();
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: h * 0.1,
                            width: h * 0.1,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: const Text(
                              "0",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              oriPrice = oriPrice + e.toString();
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: h * 0.1,
                            width: h * 0.1,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: const Text(
                              "8",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              oriPrice = oriPrice + f.toString();
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: h * 0.1,
                            width: h * 0.1,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: const Text(
                              "5",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              oriPrice = oriPrice + g.toString();
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: h * 0.1,
                            width: h * 0.1,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: const Text(
                              "2",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              oriPrice = oriPrice + d.toString() + d.toString();
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: h * 0.1,
                            width: h * 0.1,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: const Text(
                              "00",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              oriPrice = oriPrice + i.toString();
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: h * 0.1,
                            width: h * 0.1,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: const Text(
                              "9",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              oriPrice = oriPrice + j.toString();
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: h * 0.1,
                            width: h * 0.1,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: const Text(
                              "6",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              oriPrice = oriPrice + k.toString();
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: h * 0.1,
                            width: h * 0.1,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: const Text(
                              "3",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              oriPrice = oriPrice + (dot);
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: h * 0.1,
                            width: h * 0.1,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: const Text(
                              ".",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              oriPrice = "";
                              finalPrice = 0;
                              Gst = 0.0;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                                left: 40.0, top: 10.0, bottom: 10.0),
                            alignment: Alignment.center,
                            height: h * 0.175,
                            width: h * 0.1,
                            decoration: BoxDecoration(
                              color: Colors.deepOrangeAccent,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: const Text(
                              "AC",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (oriPrice.isNotEmpty) {
                                oriPrice =
                                    oriPrice.substring(0, oriPrice.length - 1);
                              }
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                                left: 40.0, top: 10.0, bottom: 10.0),
                            alignment: Alignment.center,
                            height: h * 0.175,
                            width: h * 0.1,
                            decoration: BoxDecoration(
                              color: Colors.deepOrangeAccent,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: const Icon(Icons.backspace_outlined),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
