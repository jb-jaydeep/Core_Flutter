import 'package:flutter/material.dart';

class desPage extends StatefulWidget {
  final Map data;

  const desPage({Key? key, required this.data}) : super(key: key);

  @override
  State<desPage> createState() => _desPageState();
}

class _desPageState extends State<desPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Detail Page",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             
              Expanded(
                flex: 2,
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                     height: h*0.15,
                      width: h*0.15,
                      child: CircleAvatar(

                        backgroundImage: AssetImage(widget.data['profile']),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                            child: Text(
                          widget.data['subtitle'],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              height: 2),
                        )),
                        Container(
                          child: Text(
                            widget.data['ceo'],
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                height: 2),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Company Details",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              height: h * 0.15,
                              width: h * 0.15,
                              child: Image.asset(widget.data['logo']),
                            ),
                            Text(
                              widget.data['title'],
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 5,

                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Company Description",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,

                ),
                ),
                  Text(widget.data['des'],style: TextStyle(
                    fontSize: 16,
                    height: 2
                  ),),
                ],
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
