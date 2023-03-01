import 'package:ch_10_2/views/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:ch_10_2/views/screens/desPage.dart';

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<Map> Data = [
    {
      'logo': (imagePath + i1),
      'title': "Aarohi Patel",
      'subtitle': "Actor",
      'subtitlea': "Actors",
      'des': "Aarohi was born to the Gujarat's Director-Producer duo Saandeep "
          "Patel and Aarti Patel. She also has a younger sister, Sanjanaa Patel. "
          "She completed her Bachelors in Commerce, with specialization in Accounts "
          "from H.L. Institute of Commerce, Ahmedabad University. Along with her"
          " bachelor studies, she did an internship at one of the Ahmedabad's "
          "popular radio stations 94.3 My FM from April 2012 till January 2014."
          " She also did a two-month internship at TV9 Gujarati from April 2014"
          " to June 2014.[5] She has won many college-level competitions in dance "
          "and theater."
          "She got her first lead role in Premji: Rise of a Warrior "
          "while she was still in college.She did her post graduation"
          " in Development Communication from Gujarat University.",
    },
    {
      'logo': (imagePath + i2),
      'title': "Deeksha Joshi",
      'subtitle': "Actor",
      'subtitlea': "",
      'des': "Deeksha debuted with the movie Shubh Aarambh, directed by Amit Barot in 2017. She then starred in other two movies Karsandas Pay & Use and Colorbaaj in the same year.[2] Karsandas Pay & Use was her first Commercially successful filmHer next project was Sharato Lagu alongside Malhar Thakkar. This was also a commercial success. She won the GIFA best actress of the year in 2018 for her role in Sharato Lagu. The film and her performance was both critically and commercially acclaimed. Her next venture was Dhunki starring with Pratik Gandhi which was acclaimed critically.[3] In 2020, Deeksha received the Critics' Choice Film Awards Best Actress (Gujarati) for Dhunki. Deeksha did the titular role in the romantic comedy film Luv Ni Love Storys directed by Durgesh Tanna which was also released in 2020.[4][5]",
    },
    {
      'logo': (imagePath + i3),
      'title': "Dilip Joshi",
      'subtitle': "Actor",
      'subtitlea': "",
      'des': "",
    },
    {
      'logo': (imagePath + i4),
      'title': "Janki",
      'subtitle': "Actor",
      'subtitlea': "",
      'des': "",
    },
    {
      'logo': (imagePath + i5),
      'title': "Malhar Thakar",
      'subtitle': "Actor",
      'subtitlea': "",
      'des': "",
    },
    {
      'logo': (imagePath + i6),
      'title': "Naresh Kanodiya",
      'subtitle': "Actor",
      'subtitlea': "",
      'des': "",
    },
    {
      'logo': (imagePath + i7),
      'title': "Snehlata",
      'subtitle': "Actor",
      'subtitlea': "",
      'des': "",
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery
        .of(context)
        .size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          "Gujarati Actor",
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [

            Container(
              alignment: Alignment(-0.7, 0),
              color: Color(0xff060047),
              height: h * 0.1,
              child: Text("Actors", style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: Data
                    .map((e) =>
                    Stack(
                      children: [
                        Container(
                          height: h * 0.7,
                          width: w * 0.7,
                          color: Color(0xff060047),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                height: 350,
                                width: 250,
                                child: Positioned(
                                  //top: 10,
                                  left: 10,
                                  bottom: 100,

                                  child: Container(
                                    alignment: const Alignment(0, -4),
                                    margin: EdgeInsets.all(5),
                                    width: 250,
                                    height: 280,
                                    padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      color: Color(0xff301E67),
                                      border: Border.all(
                                        width: 3,
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black,
                                          spreadRadius: 8,
                                          blurRadius: 20,
                                        )
                                      ],
                                    ),
                                    child: SizedBox(
                                      height: 200,
                                      width: 200,
                                      child: Image.asset(e['logo']),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Positioned(
                          left: 30,
                          top: 300,
                          child: Text(
                            e['title'],
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30,
                          top: 340,
                          child: Text(
                            e['subtitle'],
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30,
                          top: 390,
                          child: GestureDetector(
                            onTap: () {
                               Navigator.of(context).pushNamed('page1',arguments: e);
                             // Navigator.of(context).push(MaterialPageRoute(
                               //   builder: (context) => desPage(data: e,)),);
                            },
                            child: Container(
                              height: 50,
                              width: 130,
                              alignment: Alignment.center,
                              child: const Text(
                                "Know More",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    spreadRadius: 2,
                                    blurRadius: 20,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),)
                    .toList(),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xff060047),
    );
  }
}
