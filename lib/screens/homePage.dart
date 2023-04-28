import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  DateTime CurrentDate = DateTime.now();

  String? birthday;
  String? birthmonth;
  String? birthyear;

  int? currentyear;
  int? currentmonth;
  int? currentday;

  int? nextbm;
  int? nextbd;

  TextEditingController daycontroller = TextEditingController();
  TextEditingController monthcontroller = TextEditingController();
  TextEditingController yearcontroller = TextEditingController();
  TextEditingController nextbmcontroller = TextEditingController();
  TextEditingController nextbdcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Know Your Next Birhday",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Today's Date",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabled: false,
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                        ),
                        hintText:
                            "${CurrentDate.day}/${CurrentDate.month}/${CurrentDate.year}",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Date of Birth",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 10,
                          child: TextFormField(
                            controller: daycontroller,
                            textAlign: TextAlign.center,
                            onChanged: (val) => birthday = val,
                            decoration: InputDecoration(
                              hintText: "DD",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.green,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                          flex: 10,
                          child: TextField(
                            controller: monthcontroller,
                            textAlign: TextAlign.center,
                            onChanged: (val) => birthmonth = val,
                            decoration: InputDecoration(
                              hintText: "MM",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.green,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                          flex: 10,
                          child: TextField(
                            controller: yearcontroller,
                            textAlign: TextAlign.center,
                            onChanged: (val) => birthyear = val,
                            decoration: InputDecoration(
                              hintText: "YYYY",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.green,
                                  width: 2,
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
                flex: 3,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          daycontroller.clear();
                          monthcontroller.clear();
                          yearcontroller.clear();

                          birthday = null;
                          birthmonth = null;
                          birthyear = null;

                          currentday = null;
                          currentmonth = null;
                          currentyear = null;
                          nextbm = null;
                          nextbd = null;
                        });
                      },
                      child: Text("CLEAR"),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if ((int.parse(birthday!)) > CurrentDate.day) {
                            if ((int.parse(birthmonth!)) < CurrentDate.month) {
                              currentday = 30 -
                                  ((int.parse(birthday!)) - CurrentDate.day);
                              currentmonth = (CurrentDate.month -
                                      (int.parse(birthmonth!))) -
                                  1;
                              currentyear =
                                  (CurrentDate.year - (int.parse(birthyear!)));
                              nextbm = 12 - (CurrentDate.month - 1);
                              nextbd = 30 -
                                  (30 -
                                      ((int.parse(birthday!)) -
                                          CurrentDate.day));
                            } else if ((int.parse(birthmonth!)) >
                                CurrentDate.month) {
                              currentday = 30 -
                                  ((int.parse(birthday!)) - CurrentDate.day);
                              currentmonth = (12 -
                                  ((int.parse(birthmonth!))) +
                                  (CurrentDate.month - 1));
                              currentyear = (CurrentDate.year -
                                  (int.parse(birthyear!)) -
                                  1);
                              nextbm = 12 -
                                  (12 -
                                      ((int.parse(birthmonth!))) +
                                      (CurrentDate.month - 1) +
                                      1);
                              nextbd = 30 -
                                  (30 -
                                      ((int.parse(birthday!)) -
                                          CurrentDate.day));
                            } else if ((int.parse(birthmonth!)) ==
                                CurrentDate.month) {
                              currentday =
                                  (int.parse(birthday!)) - CurrentDate.day;
                              currentmonth = 00;
                              currentyear =
                                  (CurrentDate.year - (int.parse(birthyear!)));
                              nextbd = 30 -
                                  ((int.parse(birthday!)) - CurrentDate.day);
                              nextbm = 11;
                            }
                          } else if (((int.parse(birthday!)) <
                              CurrentDate.day)) {
                            if ((int.parse(birthmonth!)) < CurrentDate.month) {
                              currentday =
                                  (CurrentDate.day - (int.parse(birthday!)));
                              currentmonth = (CurrentDate.month -
                                  (int.parse(birthmonth!)));
                              currentyear =
                                  CurrentDate.year - (int.parse(birthyear!));
                              nextbm = 12 -
                                  (((CurrentDate.month -
                                          (int.parse(birthmonth!)))) +
                                      1);
                              nextbd = 30 -
                                  (CurrentDate.day - (int.parse(birthday!)));
                            } else if ((int.parse(birthmonth!)) >
                                CurrentDate.month) {
                              currentday =
                                  CurrentDate.day - (int.parse(birthday!));
                              currentmonth = (12 -
                                  ((int.parse(birthmonth!))) +
                                  (CurrentDate.month - 1));
                              currentyear = (CurrentDate.year -
                                  (int.parse(birthyear!)) -
                                  1);
                              nextbd = 30 -
                                  (CurrentDate.day - (int.parse(birthday!)));
                              nextbm = 12 -
                                  (((12 -
                                          ((int.parse(birthmonth!))) +
                                          (CurrentDate.month)) +
                                      1));
                            } else if ((int.parse(birthmonth!)) ==
                                CurrentDate.month) {
                              currentday =
                                  CurrentDate.day - (int.parse(birthday!));
                              currentmonth = 00;
                              currentyear =
                                  (CurrentDate.year - (int.parse(birthyear!)));
                              nextbm = 11;
                              nextbd = 30 -
                                  (CurrentDate.day - (int.parse(birthday!)));
                            }
                          } else if (((int.parse(birthday!)) ==
                              CurrentDate.day)) {
                            if ((int.parse(birthmonth!)) < CurrentDate.month) {
                              currentday = 00;
                              currentmonth = (CurrentDate.month -
                                  (int.parse(birthmonth!)));
                              currentyear =
                                  (CurrentDate.year - (int.parse(birthyear!)));
                              nextbd = 00;
                              nextbm = 12 -
                                  ((CurrentDate.month -
                                      (int.parse(birthmonth!))));
                            } else if ((int.parse(birthmonth!)) >
                                CurrentDate.month) {
                              currentday = 00;
                              currentmonth = (12 -
                                  ((int.parse(birthmonth!))) +
                                  (CurrentDate.month - 1));
                              currentyear = (CurrentDate.year -
                                  (int.parse(birthyear!)) -
                                  1);
                              nextbd = 00;
                              nextbm = 12 -
                                  ((12 -
                                      ((int.parse(birthmonth!))) +
                                      (CurrentDate.month - 1)));
                            } else if ((int.parse(birthmonth!)) ==
                                CurrentDate.month) {
                              currentday = 00;
                              currentmonth = 00;
                              currentyear =
                                  (CurrentDate.year - (int.parse(birthyear!)));
                              nextbm = 12;
                              nextbd = 00;
                            }
                          }
                        });
                      },
                      child: Text("CALCULATE"),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next Birthday",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: h * 0.14,
                      width: w * 0.9,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "After ${nextbm ?? "00"} Months & ${nextbd ?? "00"} Days",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                        ),
                      ),
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
