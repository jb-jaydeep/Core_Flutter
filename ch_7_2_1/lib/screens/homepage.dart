import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
 @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
       title: const Text(
          "BOLT",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: w*0.15,
                   // height: h,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                  //  height: h,
                      width: w*0.1,
                    child: Text("⚡",style: TextStyle(
                      fontSize: 50,
                      color: Colors.orangeAccent
                    ),),
                  ),
                  Container(
                    width: w*0.15,
                   // height: h,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
