import 'package:flutter/material.dart';
import 'package:ch_9_1/utils/imageutils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
bool list = true;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: (){
              setState(() {
                if(list == true){
                  list = false;
                }else{
                  list = true;
                }
              });
            },
            child: const Icon(Icons.grid_view),
          ),
        ],
        title: const Text(
          "GALLARY VIEWER",
          style: TextStyle(
            fontSize: 25,

          ),
        ),
      ),
      body: (list)
      ?SingleChildScrollView(
        child: Column(
         children: [
           Container(
             margin: const EdgeInsets.all(10),
             height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                   color: Colors.black,
                   width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i1),)),
           Container(
             margin: const EdgeInsets.all(10),
             height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                   color: Colors.black,
                   width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i2),)),
           Container(
             margin: const EdgeInsets.all(10),
             height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                   color: Colors.black,
                   width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i3),)),
           Container(
             margin: const EdgeInsets.all(10),
             height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                   color: Colors.black,
                   width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i4),)),
           Container(
             margin: const EdgeInsets.all(10),
             height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                   color: Colors.black,
                   width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i5),)),
           Container(
             margin: const EdgeInsets.all(10),
             height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                   color: Colors.black,
                   width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i6),)),
           Container(
             margin: const EdgeInsets.all(10),
             height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                   color: Colors.black,
                   width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i7),)),
           Container(
             margin: const EdgeInsets.all(10),
             height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                   color: Colors.black,
                   width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i8),)),
           Container(
             margin: const EdgeInsets.all(10),
             height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                   color: Colors.black,
                   width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i9),)),
           Container(
             margin: const EdgeInsets.all(10),
             height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                   color: Colors.black,
                   width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i10),)),
           Container(
               margin: const EdgeInsets.all(10),
               height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                     color: Colors.black,
                     width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i1),)),
           Container(
               margin: const EdgeInsets.all(10),
               height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                     color: Colors.black,
                     width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i2),)),
           Container(
               margin: const EdgeInsets.all(10),
               height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                     color: Colors.black,
                     width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i3),)),
           Container(
               margin: const EdgeInsets.all(10),
               height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                     color: Colors.black,
                     width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i4),)),
           Container(
               margin: const EdgeInsets.all(10),
               height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                     color: Colors.black,
                     width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i5),)),
           Container(
               margin: const EdgeInsets.all(10),
               height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                     color: Colors.black,
                     width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i6),)),
           Container(
               margin: const EdgeInsets.all(10),
               height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                     color: Colors.black,
                     width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i7),)),
           Container(
               margin: const EdgeInsets.all(10),
               height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                     color: Colors.black,
                     width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i8),)),
           Container(
               margin: const EdgeInsets.all(10),
               height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                     color: Colors.black,
                     width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i9),)),
           Container(
               margin: const EdgeInsets.all(10),
               height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                     color: Colors.black,
                     width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i10),)), Container(
               margin: const EdgeInsets.all(10),
               height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                     color: Colors.black,
                     width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i1),)),
           Container(
               margin: const EdgeInsets.all(10),
               height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                     color: Colors.black,
                     width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i2),)),
           Container(
               margin: const EdgeInsets.all(10),
               height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                     color: Colors.black,
                     width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i3),)),
           Container(
               margin: const EdgeInsets.all(10),
               height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                     color: Colors.black,
                     width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i4),)),
           Container(
               margin: const EdgeInsets.all(10),
               height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                     color: Colors.black,
                     width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i5),)),
           Container(
               margin: const EdgeInsets.all(10),
               height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                     color: Colors.black,
                     width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i6),)),
           Container(
               margin: const EdgeInsets.all(10),
               height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                     color: Colors.black,
                     width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i7),)),
           Container(
               margin: const EdgeInsets.all(10),
               height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                     color: Colors.black,
                     width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i8),)),
           Container(
               margin: const EdgeInsets.all(10),
               height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                     color: Colors.black,
                     width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i9),)),
           Container(
               margin: const EdgeInsets.all(10),
               height: h*0.5,
               width: w,
               decoration: BoxDecoration(
                 border: Border.all(
                     color: Colors.black,
                     width: 5
                 ),
               ),
               child: Image(image: AssetImage(imagePath + i10),)),

         ],
        ),
      ) : SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i1),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i2),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i3),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i4),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i5),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i6),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i7),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i8),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i9),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i10),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i1),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i2),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i3),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i4),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i5),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i6),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i7),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i8),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i9),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i10),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i1),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i2),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i3),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i4),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i5),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i6),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i7),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i8),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i9),)),
            Container(
                margin: const EdgeInsets.all(10),
                height: h,
                width: w*0.5,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      width: 5
                  ),
                ),
                child: Image(image: AssetImage(imagePath + i10),)),


          ],
        ),
      )
    );
  }
}
