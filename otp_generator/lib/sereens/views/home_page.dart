import 'dart:math';

import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}
String? n;
TextEditingController nController = TextEditingController();


int index = 0;
Random r = Random();
List<int>otp = [];
void generateOTP() {
  if (n != null && int.parse(n!) > 0) {
    otp = List.generate(int.parse(n!), (index) => r.nextInt(9)+1);
  }
}

void resetOTP() {
  nController.clear();
  otp.clear();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff15172B),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff15172B),
        elevation: 0,
        title: const Text(
          "OTP Generator",
          style: TextStyle(
            fontSize: 35,
            color: Color(0xffF6DB87),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                width: 300,
                child: TextField(
                    controller: nController,
                  onChanged: (val) => n = (val),
                  textAlign: TextAlign.start,
                  showCursor: true,
                  cursorColor: const Color(0xffFCF6BA),
                  decoration: const InputDecoration(
                   enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffFCF6BA),
                      )
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffFCF6BA),
                        )
                    ),
                    hintText: "Enter Length of OTP",
                    hintStyle: TextStyle(
                      color: Color(0xffFCF6BA),
                    ),
                  ),
                  style: const TextStyle(
                    fontSize: 28,
                    color: Color(0xffFCF6BA),
                  ),

                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    int? n = int.tryParse(nController.text);
                    //generateOTP();
                   if (n != null && n > 0) {
    otp = List.generate(n, (index) => r.nextInt(9)+1);}
                  });
                },
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(colors: [
                      Color(0xffFFE8B8),
                      Color(0xffF6DB87),
                    ],

                    ),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Generate OTP",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Color(0xff15172B),
                  ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 1,
                child: Container(
                  width: 350,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFE8B8),
                    borderRadius: BorderRadius.circular(30),
                  ),
                 child: n == null
                     ? const Text('Please enter a value for OTP length')
                     :Row(
                    children: List.generate(int.parse(n!) , (index) => Expanded(
                      flex: 1,
                      child: Container(
                        width: 50,
                        alignment: Alignment.center,
                         child:Text(otp.isNotEmpty ? otp[index].toString() : '', style: const TextStyle(
                           fontSize: 28,
                          fontWeight: FontWeight.bold,
                         ),),
                      ),
                    ),),
                  ),
                ),),
            const Spacer(),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    nController.clear();
                    resetOTP();
                  });
                },
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(colors: [
                      Color(0xffFFE8B8),
                      Color(0xffF6DB87),
                    ],

                    ),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Reset",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Color(0xff15172B),
                  ),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
