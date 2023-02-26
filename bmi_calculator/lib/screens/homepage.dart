import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  double SliderVal = 1;
  double Bmi = 0.00;
  String status = "";
  Color Fcolor = const Color(0xff1d1e33);
  Color Mcolor = const Color(0xff1d1e33);
  Color FMcolor = const Color(0xff1d1e33);
  Color Fncolor = const Color(0xff3B3C4D);
  Color Mncolor = const Color(0xff3B3C4D);

  int wt = 10;
  int a = 1;
  double heightMeter  = 0;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff090e21),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      Mcolor = FMcolor;
                      Fcolor = Fncolor;
                    });
                  },
                  child: Container(
                    height: h * 0.2,
                    width: w * 0.22,
                    decoration: BoxDecoration(
                      color: Fcolor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "\n♀",
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 120,
                              height: 0.8,
                            ),
                          ),
                          TextSpan(
                            text: "\nFemale",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Fcolor = FMcolor;
                      Mcolor = Mncolor;
                    });
                  },
                  child: Container(
                    height: h * 0.2,
                    width: w * 0.22,
                    decoration: BoxDecoration(
                      color: Mcolor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "\n♂",
                            style: TextStyle(
                              color: Color(0xffeb1555),
                              fontSize: 120,
                              height: 0.8,
                            ),
                          ),
                          TextSpan(
                            text: "\nMale",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: h * 0.2,
                  width: w * 0.45,
                  decoration: BoxDecoration(
                    color: const Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      const Expanded(
                        child: Text(
                          "HEIGHT",
                          style: TextStyle(
                            color: Color(0xff626473),
                            height: 3,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: SliderVal.toInt().toString(),
                                  style: const TextStyle(
                                    fontSize: 40,
                                    height: 1.5,
                                    color: Colors.white,
                                  ),
                                ),
                                const TextSpan(
                                  text: "  cm",
                                  style: TextStyle(
                                    color: Color(0xff626473),
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          )),
                      Expanded(
                          child: SliderTheme(
                        data: const SliderThemeData(
                          activeTrackColor: Color(0xffF5C1D1),
                          inactiveTrackColor: Color(0xff555555),
                          thumbColor: Color(0xffeb1555),
                          trackHeight: 1,
                        ),
                        child: Slider(
                            value: SliderVal,
                            min: 1,
                            max: 200,
                            onChanged: (val) {
                              setState(() {
                                SliderVal = val;
                              });
                            }),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: h * 0.3,
                  width: w * 0.22,
                  decoration: BoxDecoration(
                    color: const Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      const Expanded(
                        child: Text(
                          "Weight",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            height: 3,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "$wt",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 40, height: 1),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  wt--;
                                });
                              },
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                  color: Color(0xff4c4f5e),
                                  shape: BoxShape.circle,
                                ),
                                alignment: Alignment.center,
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  wt++;
                                });
                              },
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                  color: Color(0xff4c4f5e),
                                  shape: BoxShape.circle,
                                ),
                                alignment: Alignment.center,
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 225,
                  width: 175,
                  decoration: BoxDecoration(
                    color: const Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      const Expanded(
                        child: Text(
                          "Age",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            height: 3,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "$a",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 40, height: 1),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  a--;
                                });
                              },
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                  color: Color(0xff4c4f5e),
                                  shape: BoxShape.circle,
                                ),
                                alignment: Alignment.center,
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  a++;
                                });
                              },
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                  color: Color(0xff4c4f5e),
                                  shape: BoxShape.circle,
                                ),
                                alignment: Alignment.center,
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: h * 0.2,
                  width: w * 0.45,
                  decoration: BoxDecoration(
                    color: const Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      const Expanded(
                        child: Text(
                          "BMI",
                          style: TextStyle(
                            color: Color(0xff626473),
                            height: 3,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          Bmi.toStringAsFixed(2),
                          style: const TextStyle(
                            color: Colors.white,
                            height: 3,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          status,
                          style: const TextStyle(
                            color: Colors.white,
                            height: 3,
                            fontSize: 16,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 4,
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xffeb1555),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                splashColor: Colors.white,
                onTap: () {
                  setState(() {
                   //heightMeter = SliderVal/100;
                  // Bmi = wt/(heightMeter * heightMeter);
                   Bmi =wt/ ((SliderVal/100)*(SliderVal/100));
                   if(Fcolor== FMcolor){
                     Bmi =  Bmi + (0.07 * a);
                   }else{
                     Bmi = Bmi + (0.06*a);
                   }
                   if(Bmi <16.0){
                     status = "Severe Thinness";
                   }else if(Bmi>=16 && Bmi <17){
                     status = "Moderate Thinness";
                   }else if(Bmi>=17 && Bmi <18.5){
                     status = "Mild Thinness";
                   }else if(Bmi>=18.5 && Bmi <25){
                     status = "Normal";
                   }else if(Bmi>=25 && Bmi <30){
                     status = "Overweight";
                   }else if(Bmi>=30 && Bmi <35){
                     status = "Obese Class I";
                   }else if(Bmi>=35 && Bmi <40){
                     status = "Obese Class II";
                   }else if(Bmi>=40){
                     status = "Obese Class III";
                   }

                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(5),
                  width: 350,
                  alignment: Alignment.center,
                  child: const Text(
                    "Calculate",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
      backgroundColor: const Color(0xff090e21),
    );
  }
}
