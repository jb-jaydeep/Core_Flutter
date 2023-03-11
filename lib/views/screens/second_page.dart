import 'package:e_commerce_app/utils/image_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../componants/row_componant.dart';
import 'font_style_utils.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}


const rupeeSymbol = '\u{20B9}';
String name = "";

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: TextField(
          onChanged: (val) {
            val = name;
          },
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          cursorColor: Colors.black,
          decoration: InputDecoration(
            prefixIcon: Icon(CupertinoIcons.search),
            hintText: ("Search"),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: rowData
                        .map(
                          (e) => Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Image.asset(
                                    e['logo'],
                                    fit: BoxFit.cover,
                                  ),
                                  alignment: Alignment.center,
                                  height: h * 0.1,
                                  width: h * 0.1,
                                ),
                                Text(e['footer']),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Container(
                            margin: EdgeInsets.all(10),
                            alignment: AlignmentDirectional.centerStart,
                            child: Text(
                              "Men's Fashion",
                              style: mybrandFontStyle,
                            )),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: menFashionData
                                .map(
                                  (e) => Column(
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.of(context).pushNamed("page3",arguments: e);
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border(
                                              left: BorderSide(
                                                color: Colors.black,
                                              ),
                                              right: BorderSide(
                                                color: Colors.black,
                                              ),
                                              top: BorderSide(
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          height: h * 0.3,
                                          width: w,
                                          padding: const EdgeInsets.all(5),
                                          child: Image.asset(
                                            e['fashionDataLogo'],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.of(context).pushNamed("page3",arguments: e);
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade100,
                                            border: Border(
                                              left: BorderSide(
                                                color: Colors.black,
                                              ),
                                              right: BorderSide(
                                                color: Colors.black,
                                              ),
                                              bottom: BorderSide(
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          height: h * 0.3,
                                          width: w,
                                          padding: EdgeInsets.all(5),
                                          child: Column(
                                            children: [
                                              Text(
                                                e['fashionDataBrand'],
                                                style: mybrandFontStyle,
                                              ),
                                              Text(
                                                e['fashionDataDetail'],
                                                style: mydetailFontStyle,
                                              ),
                                              Text(
                                                '$rupeeSymbol ${e['fashionDataPrize']}',
                                                style: myprizeFontStyle,
                                              ),
                                              Text(
                                                e['fashionDataDelivery'],
                                                style: mydelivaryFontStyle,
                                              ),
                                              Text(
                                                e['fashionDataStock'],
                                                style: mystockFontStyle,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            margin: EdgeInsets.all(10),
                            alignment: AlignmentDirectional.centerStart,
                            child: Text(
                              "Women's Fashion",
                              style: mybrandFontStyle,
                            )),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: womenFashionData
                                .map(
                                  (e) => SingleChildScrollView(

                                    child: GestureDetector(
                                      onTap: (){
                                        Navigator.of(context).pushNamed("page3",arguments: e);
                                      },
                                      child: Column(

                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border(
                                                left: BorderSide(
                                                  color: Colors.black,
                                                ),
                                                right: BorderSide(
                                                  color: Colors.black,
                                                ),
                                                top: BorderSide(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            height: h * 0.3,
                                            width: w,
                                            padding: const EdgeInsets.all(5),
                                            child: Image.asset(
                                              e['fashionDataLogo'],
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade100,
                                              border: Border(
                                                left: BorderSide(
                                                  color: Colors.black,
                                                ),
                                                right: BorderSide(
                                                  color: Colors.black,
                                                ),
                                                bottom: BorderSide(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            height: h * 0.3,
                                            width: w,
                                            padding: EdgeInsets.all(5),
                                            child: Column(
                                              children: [
                                                Text(
                                                  e['fashionDataBrand'],
                                                  style: mybrandFontStyle,
                                                ),
                                                Text(
                                                  e['fashionDataDetail'],
                                                  style: mydetailFontStyle,
                                                ),
                                                Text(
                                                  '$rupeeSymbol ${e['fashionDataPrize']}',
                                                  style: myprizeFontStyle,
                                                ),
                                                Text(
                                                  e['fashionDataDelivery'],
                                                  style: mydelivaryFontStyle,
                                                ),
                                                Text(
                                                  e['fashionDataStock'],
                                                  style: mystockFontStyle,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(10),
        color: Colors.white.withOpacity(0.5),
        alignment: Alignment.center,
        height: h * 0.1,
        width: w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.home),
                Text("Home"),
              ],
            ),
            Column(
              children: [
                Icon(Icons.person),
                Text("You"),
              ],
            ),
            Column(
              children: [
                Icon(CupertinoIcons.refresh_circled_solid),
                Text("More"),
              ],
            ),
            Column(
              children: [
                Icon(CupertinoIcons.cart),
                Text("Cart"),
              ],
            ),
            Column(
              children: [
                Icon(Icons.menu),
                Text("Menu"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
