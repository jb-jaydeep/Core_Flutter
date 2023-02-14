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
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,

        title: const Text(
          "Stack App",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,

          ),
        ),
      ),
      body:Container(
        padding:const EdgeInsets.all(10),
        child:Stack(
          children: [
            Positioned(
              top: 10,
              left: 30,
              height:h*0.2,
              width: h*0.2,
              child: Container(

                width: 150,
                height: 150,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.blueGrey,
                      spreadRadius: 2,
                      blurRadius: 10,
                    )
                  ],
                ),
                child: const Text('Purple',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,


                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left:60,
              width: h*0.2,
              height: h*0.2,
              child: Container(
                width: 150,
                height: 150,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.blueGrey,
                      spreadRadius: 2,
                      blurRadius: 10,
                    )
                  ],
                ),
                child: const Text('Indigo',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,

                  ),
                ),
              ),
            ),
            Positioned(
              top: 90,
              left: 90,
              height:h*0.2,
              width: h*0.2,
              child: Container(

                width: 150,
                height: 150,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.blueGrey,
                      spreadRadius: 2,
                      blurRadius: 10,
                    )
                  ],
                ),
                child: const Text('Light Blue',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,


                  ),
                ),
              ),
            ),
            Positioned(
              top: 140,
              left:120,
              width: h*0.2,
              height: h*0.2,
              child: Container(

                width: 150,
                height: 150,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.blueGrey,
                      spreadRadius: 2,
                      blurRadius: 10,
                    )
                  ],
                ),
                child: const Text('Green',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,

                  ),
                ),
              ),
            ),
            Positioned(
              top: 190,
              left:150,
              width: h*0.2,
              height: h*0.2,
              child: Container(

                width: 150,
                height: 150,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.blueGrey,
                      spreadRadius: 2,
                      blurRadius: 10,
                    )
                  ],
                ),
                child: const Text('Amber',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,

                  ),
                ),
              ),
            ),
            Positioned(
              top: 240,
              left:180,
              width: h*0.2,
              height: h*0.2,
              child: Container(

                width: 150,
                height: 150,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.blueGrey,
                      spreadRadius: 2,
                      blurRadius: 10,
                    )
                  ],
                ),
                child: const Text('Orange',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,

                  ),
                ),
              ),
            ),
            Positioned(
              top: 290,
              left:210,
              width: h*0.2,
              height: h*0.2,
              child: Container(

                width: 150,
                height: 150,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.blueGrey,
                      spreadRadius: 2,
                      blurRadius: 10,
                    )
                  ],
                ),
                child: const Text('RedAccent',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,

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
