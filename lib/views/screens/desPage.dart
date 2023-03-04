import 'package:flutter/material.dart';

class desPage extends StatefulWidget {
  const desPage({
    Key? key,
  }) : super(key: key);

  @override
  State<desPage> createState() => _desPageState();
}

class _desPageState extends State<desPage> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          data['title'],
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                width: w,
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(
                    color: Colors.red,
                    width: 2,
                  )),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Image.asset(data['logo']),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(5),
                // padding: EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(
                    color: Colors.red,
                    width: 2,
                  )),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.only(left: 80),
                  title: Text(
                    data['title'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  subtitle: Text(
                    data['subtitle'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(
                      color: Colors.red,
                      width: 2,
                    )),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  child: Text(
                    data['des'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
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
