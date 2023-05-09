import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

TextEditingController textFieldController = TextEditingController();

class _homePageState extends State<homePage> {
  double degree = 0;
  bool Pm = true;

  int sec = DateTime.now().second;
  int min = DateTime.now().minute;
  int hr = DateTime.now().hour;
  double minutesAngle = 0;
  double secondsAngle = 0;
  double hoursAngle = 0;
  late Timer timer;
  source() {
    setState(() {
      (sec / pi) * pi;

      if (hr > 12) {
        Pm != true;
        hr -= 12;
      }
      Future.delayed(const Duration(seconds: 1), () {
        sec++;
        if (sec > 59) {
          min++;
          sec = 00;
        }
        if (min > 59) {
          hr++;
          min = 00;
        }
        source();
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    source();
    timer = Timer.periodic(Duration(milliseconds: 500), (timer) {
      final Now = DateTime.now();
      setState(() {
        secondsAngle = (pi / 30) * sec;
        minutesAngle = pi / 30 * min;
        hoursAngle = (pi / 6 * hr) + (pi / 45 * minutesAngle);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Clock"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                //hr
                Center(
                  child: Transform.scale(
                    scale: 6.5,
                    child: CircularProgressIndicator(
                      color: Colors.green.shade900,
                      strokeWidth: 1.3,
                      value: hr.toDouble() / 12,
                    ),
                  ),
                ),
                //min
                Center(
                  child: Transform.scale(
                    scale: 7.5,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 1.0,
                      value: min.toDouble() / 60,
                    ),
                  ),
                ),
                //sec
                Center(
                  child: Transform.scale(
                    scale: 8.5,
                    child: CircularProgressIndicator(
                      color: Colors.orange.shade900,
                      strokeWidth: 1.0,
                      value: sec.toDouble() / 60,
                    ),
                  ),
                ),
                // Digital Time
                Center(
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "$hr : $min : $sec",
                          style: const TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      (Pm != true)
                          ? Center(
                              child: Text(
                                "Am",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          : Center(
                              child: Text(
                                "Pm",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
                //Analog Watch
                //sec
                Center(
                  child: Transform.rotate(
                    angle: 3 * pi / 2,
                    child: Transform.rotate(
                      angle: (sec / 60) * (pi * 2),
                      child: Divider(
                        thickness: 2,
                        color: Colors.deepOrange,
                        indent: w * 0.5,
                        endIndent: 56,
                      ),
                    ),
                  ),
                ),
                //min
                Center(
                  child: Transform.rotate(
                    angle: 3 * pi / 2,
                    child: Transform.rotate(
                      angle: (min / 60) * (pi * 2),
                      child: Divider(
                        thickness: 2,
                        color: Colors.white,
                        indent: w * 0.5,
                        endIndent: 58,
                      ),
                    ),
                  ),
                ),
                //hr
                Center(
                  child: Transform.rotate(
                    angle: 3 * pi / 2,
                    child: Transform.rotate(
                      angle: (hr / 12) * (pi * 2),
                      child: Divider(
                        thickness: 2,
                        color: Colors.green.shade900,
                        indent: w * 0.5,
                        endIndent: 75,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
