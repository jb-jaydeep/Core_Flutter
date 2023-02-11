// ignore_for_file: camel_case_types

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
    double w = s.width;
    double h = s.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Map"),
        leading: const Icon(Icons.menu),
        centerTitle: true,
        backgroundColor: Colors.blue.shade400,
      ),
      body: Center(
        child: Container(
          // padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: h*0.1,
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Exit",style: TextStyle(
                      fontSize: 21,
                      color: Colors.black,
                    ),
                    ),
                    Icon(Icons.exit_to_app),
                  ],
                ),
              ),

              Container(
                height: h*0.1,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Play",style: TextStyle(
                      fontSize: 21,
                      color: Colors.black,
                    ),
                    ),
                    Icon(Icons.play_arrow),
                  ],
                ),
              ),
              Container(
                height: h*0.1,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Pause",style: TextStyle(
                      fontSize: 21,
                      color: Colors.black,
                    ),
                    ),
                    Icon(Icons.pause),
                  ],
                ),
              ),
              Container(
                height: h*0.1,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Stop",style: TextStyle(
                      fontSize: 21,
                      color: Colors.black,
                    ),
                    ),
                    Icon(Icons.stop),
                  ],
                ),
              ),
              Container(
                height: h*0.1,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("close",style: TextStyle(
                      fontSize: 21,
                      color: Colors.black,
                    ),
                    ),
                    Icon(Icons.close),
                  ],
                ),
              ),
              Container(
                height: h*0.1,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Delete",style: TextStyle(
                      fontSize: 21,
                      color: Colors.black,
                    ),
                    ),
                    Icon(Icons.delete),
                  ],
                ),
              ),
              Container(
                height: h*0.1,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Email",style: TextStyle(
                      fontSize: 21,
                      color: Colors.black,
                    ),
                    ),
                    Icon(Icons.email),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

backgroundColor: Colors.grey,
    );
  }
}
