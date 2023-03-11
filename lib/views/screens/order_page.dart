import 'package:e_commerce_app/views/screens/Final_Page.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

String fullname = "";
String mobile = "";
String pincode = "";
String house = "";
String area = "";
String landmark = "";
String town = "";
String state = "";

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Order"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              onChanged: (val) {
                fullname == val;
              },
              textAlign: TextAlign.start,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: "Enter your Full Name",
              ),
            ),
            TextField(
              onChanged: (val) {
                mobile == val;
              },
              textAlign: TextAlign.start,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: "Enter your Mobile Number",
              ),
            ),
            TextField(
              onChanged: (val) {
                pincode == val;
              },
              textAlign: TextAlign.start,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: "Enter Pin code",
              ),
            ),
            TextField(
              onChanged: (val) {
                house == val;
              },
              textAlign: TextAlign.start,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText:
                    "Enter  Flat, House no., Building, Company, Apartment",
              ),
            ),
            TextField(
              onChanged: (val) {
                area == val;
              },
              textAlign: TextAlign.start,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: "Area, Street, Sector, Village",
              ),
            ),
            TextField(
              onChanged: (val) {
                landmark == val;
              },
              textAlign: TextAlign.start,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: "Landmark",
              ),
            ),
            TextField(
              onChanged: (val) {
                town == val;
              },
              textAlign: TextAlign.start,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: "Town/City",
              ),
            ),
            TextField(
              onChanged: (val) {
                state == val;
              },
              textAlign: TextAlign.start,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: "State",
              ),
            ),
            SizedBox(
              height: h * 0.2,
              width: w,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                Navigator.of(context).pushNamed('page6');
                });
              },
              child: Container(
                height: h * 0.1,
                width: w * 0.7,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  border: Border.all(
                    color: Colors.blue,
                  ),
                ),
                child: Text(
                  "Save Address",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
