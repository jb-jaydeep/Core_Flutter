import 'package:e_commerce_app/componants/row_componant.dart';
import 'package:e_commerce_app/views/screens/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'font_style_utils.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}
int number = 0;
int amount = 0;

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    Map cartData = ModalRoute.of(context)!.settings.arguments as Map;
    amount = number * (int.tryParse(cartData['prize']) ?? 0);

    return Scaffold(
      appBar: AppBar(
        title: Text("Your Cart"),
        centerTitle: true,

        actions:[ GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('page2', (route) => false);
            },
            child: Icon(Icons.home)),
        SizedBox(
          width: w*0.05,
        ),],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(16),
                  height: h * 0.1,
                  width: h * 0.07,
                  child: Image.asset(
                    cartData['logo'],
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      cartData['brand'],
                      style:TextStyle(
                        fontSize: 16,

                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$rupeeSymbol ${cartData['prize']}',
                      style: TextStyle(
                        height: 2,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      number++;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(16),

                    child: Icon(Icons.add),
                  ),
                ),
                Text("$number"),
                GestureDetector(
                  onTap: (){
                    setState(() {
                     (number>0) ? number--
                      : number == 0;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(16),

                    child: Icon(Icons.remove),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              height: h*0.1,
             
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red.shade500,

                ),
                borderRadius: BorderRadiusDirectional.circular(20),
              ),
              child: Text("Total Amount : $rupeeSymbol $amount",style: myprizeFontStyle,),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed('page5');
              },
              child: Container(
                alignment: Alignment.center,
                height: h*0.1,
                width: w*0.6,
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  border: Border.all(
                    color: Colors.red.shade500,

                  ),
                  borderRadius: BorderRadiusDirectional.circular(20),
                ),
                child: Text("Place Order",style: myprizeFontStyle,),
              ),
            ),
          ],
        ),
      ),


    );
  }
}
