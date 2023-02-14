import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  double cost = 0;
  List list = [
    {'id': '1', 'name': 'Watch', 'price': '3200', 'category': 'Wearable'},
    {'id': '2', 'name': 'T-Shirt', 'price': '590', 'category': 'Wearable'},
    {'id': '3', 'name': 'Jeans', 'price': '850', 'category': 'Wearable'},
    {'id': '4', 'name': 'wallet', 'price': '340', 'category': 'Mens accessories'},
    {'id': '5', 'name': 'Flowers ','price': '100','category': 'decoration' },
    {'id': '6', 'name': 'Ear-Phone', 'price': '1190', 'category': 'accessories'},
    {'id': '7', 'name': 'Data-Cable','price': '120','category': 'accessories ' },
    {'id': '8', 'name': 'Fire TV Stick','price': '3250','category': 'accessories '},
    {'id': '9', 'name': 'Laptop ','price': '100000','category': 'accessories '},
    {'id': '10','name': 'Leather Belt','price': '750', 'category': 'Mens accessories '}
  ];
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Products Filter",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [Icon(Icons.grid_on_rounded)],
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Slider(
                max: 100000,
                min: 0,
                divisions: 10000,
                onChanged: (double a) {
                  setState(() {
                    cost = a;
                  });
                },
                value:cost,
              ),
              Text(
                "All Products < Rs. ${cost.toInt()}",
                style:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 15)),
              Column(
                children: list.map((e) {
                  if (double.parse(e['price']) < cost) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: h*0.1,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 2,
                                    blurRadius: 3,

                                ),
                              ],
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text(e['id'])],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(e['name'],style: TextStyle(
                                      fontSize: 21,
                                    ),),
                                    Text(e['category']),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(e['price'],style: TextStyle(
                                      fontSize: 21,
                                    ),),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  }
                  return SizedBox();
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

