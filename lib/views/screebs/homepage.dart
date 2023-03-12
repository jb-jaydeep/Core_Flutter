import 'dart:math';

import 'package:flutter/material.dart';

import 'image_utils.dart';

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

Color addStoryColor = Colors.green;
Color removeStoryColor = Colors.grey;
Color storyColor = Colors.grey;

List<Map> image = [
  {
    'img': (imagePath + i1),
    'imga': "",
  },
  {
    'img': (imagePath + i2),
    'imga': "",
  },
  {
    'img': (imagePath + i3),
    'imga': "",
  },
  {
    'img': (imagePath + i4),
    'imga': "",
  },
  {
    'img': (imagePath + i5),
    'imga': "",
  },
  {
    'img': (imagePath + i6),
    'imga': "",
  },
  {
    'img': (imagePath + i7),
    'imga': "",
  },
  {
    'img': (imagePath + i8),
    'imga': "",
  },
  {
    'img': (imagePath + i9),
    'imga': "",
  },
  {
    'img': (imagePath + i10),
    'imga': "",
  },
];
BoxDecoration button = BoxDecoration(
  borderRadius: BorderRadiusDirectional.circular(20),
  border: Border.all(
    color: Colors.black,
  ),
  color: Colors.white,
);
TextStyle text = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 21,

);

class _homePageState extends State<homePage> {
  String oriImage = imagePath + i;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "JaydeepBorda",
          style: TextStyle(
              fontSize: 21, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [

            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: storyColor,
                        width: 5,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(oriImage),
                      radius: 100,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 6,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: image
                      .map(
                        (e) => GestureDetector(
                          onTap: () {
                            setState(() {
                              oriImage = e['img'];
                              storyColor= removeStoryColor;
                            });
                          },
                          child: Container(
                            height: h * 0.4,
                            width: w * 0.9,
                            margin: EdgeInsets.all(16),
                            child: Image.asset(
                              e['img'],
                              fit: BoxFit.fill,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 3,
                              ),
                             
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              child: GestureDetector(
                onTap: (){
                 setState(() {
                   storyColor=addStoryColor;
                 });
                },
                child: Container(
                  height: h*0.07,
                  width: w*0.5,
                  alignment: Alignment.center,
                  decoration: button,
                  child: Text("Add Story",style: text,),
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 1,
              child: GestureDetector(
               onTap: (){
                 setState(() {
                   storyColor = removeStoryColor;
                 });
               },
                child: Container(
                  height: h*0.07,
                  width: w*0.5,
                  alignment: Alignment.center,
                  decoration: button,
                  child: Text("Remove Story",style: text,),
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
