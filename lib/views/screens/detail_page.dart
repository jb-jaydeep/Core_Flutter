import 'package:e_commerce_app/componants/row_componant.dart';
import 'package:e_commerce_app/views/screens/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'font_style_utils.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {

    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    Map menFashionData = (ModalRoute.of(context)!.settings.arguments as Map);
    Map cartData = {
      'logo': menFashionData['logo'],
      'brand': menFashionData['fashionDataBrand'],
      'detail': menFashionData['fashionDataDetail'],
      'prize': menFashionData['fashionDataPrize'],
      'delivery': menFashionData['fashionDataDelivery'],
      'stock': menFashionData['fashionDataStock'],
    };

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),                ),
                height: h * 0.3,
                width: w,
                padding: const EdgeInsets.all(5),
                child: Image.asset(
                  menFashionData['logo'],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(


                  children: [
                    GestureDetector(
                      onTap:(){
                        setState(() {
                          menFashionData['logo'] = menFashionData['fashionDataLogo'];
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        height: h * 0.1,
                        width: h*0.1,
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(
                          menFashionData['fashionDataLogo'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap:(){
                       setState(() {
                         menFashionData['logo'] = menFashionData['fashionData1'];
                       });
                      },
                      child: Container(
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        height: h * 0.1,
                        width: h*0.1,
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(
                          menFashionData['fashionData1'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap:(){
                        setState(() {
                          menFashionData['logo'] = menFashionData['fashionData2'];
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        height: h * 0.1,
                        width: h*0.1,
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(
                          menFashionData['fashionData2'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap:(){
                        setState(() {
                          menFashionData['logo'] = menFashionData['fashionData3'];
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                         border: Border.all(
                           color: Colors.black,
                         ),
                        ),
                        height: h * 0.1,
                        width: h*0.1,
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(
                          menFashionData['fashionData3'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
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
                      menFashionData['fashionDataBrand'],
                      style: mybrandFontStyle,
                    ),
                    Text(
                      menFashionData['fashionDataDetail'],
                      style: mydetailFontStyle,
                    ),
                    Text(
                      '$rupeeSymbol ${menFashionData['fashionDataPrize']}',
                      style: myprizeFontStyle,
                    ),
                    Text(
                      menFashionData['fashionDataDelivery'],
                      style: mydelivaryFontStyle,
                    ),
                    Text(
                      menFashionData['fashionDataStock'],
                      style: mystockFontStyle,
                    ),
                  ],
                ),
              ),
            ),
            FloatingActionButton(onPressed: (
                ){
              Navigator.of(context).pushNamed("page4",arguments:cartData);
            },

            child: Icon(CupertinoIcons.cart),),
          ],
        ),
      ),
    );
  }
}
