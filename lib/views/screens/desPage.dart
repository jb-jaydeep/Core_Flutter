import 'package:flutter/material.dart';

class desPage extends StatefulWidget {

  const desPage( {Key? key, }) : super(key: key);

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
          style: TextStyle(
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
                child: Image.asset(data['logo'] ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.red,
                      width: 2,
                    )
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(5),
               // padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(
                        color: Colors.red,
                        width: 2,
                      )
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                    ),
                  ],
                ),
                child:ListTile(
                 contentPadding: EdgeInsets.only(left: 80),
                  title: Text(data['title'] ?? 'No title',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),),
                  subtitle: Text(data['subtitle'] ?? 'No title',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),),

                ),

              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.center,

                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(
                        color: Colors.red,
                        width: 2,
                      )
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                    ),
                  ],
                ),
              child: Text(data['des'],style: TextStyle(

                color: Colors.black,
              ),),

              ),
            ),
        ],
    ),
          ),


    );
  }
}
