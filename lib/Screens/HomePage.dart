import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:invoice_generator/Screens/utils/All_Utils.dart';
class homePage extends StatefulWidget {
   homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();

}
class _homePageState extends State<homePage> {
  ImagePicker picker = ImagePicker();
  File? image;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Invoice Generator"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade500,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          height: h,
          width: w,
          color: Colors.blueGrey,
          child: Form(
            key: invoiceKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             SizedBox(height: h*0.02,),
             Text("Your Company Details...",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
            fontSize: h*0.025,),),
             SizedBox(height: h*0.02,),
            Container(
              width: w,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black87),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Text("Company Logo",style: TextStyle(color: Colors.white,fontSize: h*0.02,),),
                  SizedBox(
                    width: w*0.2,
                  ),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: h*0.07,
                        backgroundColor: Colors.grey.shade200,
                        foregroundImage:
                        (image != null) ? FileImage(image as File) : null,
                        child: const Text(
                          "Image",
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        onPressed: (){
                          showGeneralDialog(context: context, pageBuilder: (context,_,__){
                            return Center(
                              child: Padding(
                                padding: EdgeInsets.all(16),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 3,
                                    ),

                                  ),
                                  padding: EdgeInsets.all(16),
                                  height: 200,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text("Profile Photo",style: TextStyle(
                                        fontSize: 18,
                                        decoration: TextDecoration.none,
                                        color: Colors.black,
                                      ),),
                                      SizedBox(
                                        height: 80,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: ElevatedButton(
                                              style:ButtonStyle(
                                                backgroundColor:MaterialStateProperty.all(Colors.black,) ,
                                              ),
                                              onPressed: () async{
                                                XFile? imageXfile = await picker.pickImage(
                                                    source: ImageSource.camera);
                                                setState(() {
                                                  String ImagePath = imageXfile!.path;
                                                  image = File(ImagePath);
                                                  FinalImage = image;
                                                  Navigator.of(context).pop();

                                                });
                                              },
                                              child: Icon(CupertinoIcons.camera),),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                              flex: 1,
                                              child: ElevatedButton(
                                                style:ButtonStyle(
                                                  backgroundColor:MaterialStateProperty.all(Colors.black87) ,
                                                ),
                                                onPressed: () async{
                                                  XFile? imageXfile = await picker.pickImage(
                                                      source: ImageSource.gallery);
                                                  setState(() {
                                                    String ImagePath = imageXfile!.path;
                                                    image = File(ImagePath);
                                                    Navigator.of(context).pop();
                                                  });
                                                },
                                                child: Icon(CupertinoIcons.folder),)),
                                        ],
                                      ),
                                    ],
                                  ),

                                ),
                              ),
                            );
                          });
                        },
                        backgroundColor: Colors.grey,
                        mini: true,
                        child: Icon(Icons.add,color: Colors.black87,),),
                    ],
                  ),
                ],
              ),
            ),
             SizedBox(height: h*0.02,),
             TextFormField(
               controller: companyNameController,
               textInputAction: TextInputAction.next,
               validator: (val) {
                 if (val!.isEmpty) {
                   return "Enter your Company Name Please...";
                 }
                 return null;
               },
               onSaved: (val) {
                 setState(() {
                   companyName = val;
                 });
               },
               decoration: const InputDecoration(
                 hintText: 'TATA Motors / Your Name',
                 hintStyle: TextStyle(
                   color: Colors.white,
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.black),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.grey),
                 ),
               ),
             ),
              SizedBox(height: h*0.02,),
             TextFormField(
               controller: companyAddressController,
               textInputAction: TextInputAction.next,
               validator: (val) {
                 if (val!.isEmpty) {
                   return "Enter your address Please...";
                 }
                 return null;
               },
               onSaved: (val) {
                 setState(() {
                   companyAddress = val;
                 });
               },
               decoration: const InputDecoration(
                 hintText: 'Enter your address here',
                 hintStyle: TextStyle(
                   color: Colors.white,
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.black),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.grey),
                 ),
               ),

             ),
              SizedBox(height: h*0.02,),
             TextFormField(
             controller: companyAddress1Controller,
             textInputAction: TextInputAction.next,
             onSaved: (val) {
               setState(() {
                 companyAddress1 = val;
               });
             },
             decoration: const InputDecoration(
               hintText: 'Enter your address here (Optional)',
               hintStyle: TextStyle(
                 color: Colors.white,
               ),
               enabledBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.black),
               ),
               focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.grey),
               ),
             ),

             ),
              SizedBox(height: h*0.02,),
             TextFormField(
               controller: companyGstController,
               textInputAction: TextInputAction.next,
               // validator: (val) {
               //   if (val!.isEmpty) {
               //     return "Enter your Gst no. Please...";
               //   }
               //   return null;
               // },
               onSaved: (val) {
                 setState(() {
                   companyGst= val;
                 });
               },
               decoration:  const InputDecoration(
                 hintText: 'Enter your Gst no.',
                 hintStyle: TextStyle(
                   color: Colors.white,
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.black),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.grey),
                 ),
               ),
             ),
              SizedBox(height: h*0.02,),
             TextFormField(
               controller: companyContactController,
               validator: (val) {
                 if (val!.isEmpty) {
                   return "Enter your Contact No. Please...";
                 } else if (val.length != 10) {
                   return "Enter a Valid Contact No.";
                 }
                 return null;
               },
               onSaved: (val) {
                 CompanyContact = val;
               },
               keyboardType: TextInputType.number,
               textInputAction: TextInputAction.next,
               decoration:  const InputDecoration(
                 hintText: 'Enter your Contact no.',
                 hintStyle: TextStyle(
                   color: Colors.white,
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.black),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.grey),
                 ),
               ),


             ),
              SizedBox(height: h*0.02,),
             ElevatedButton(
               style:ButtonStyle(
               minimumSize:MaterialStateProperty.all(const Size(100, 50),) ,
                 backgroundColor:MaterialStateProperty.all(Colors.white,),),
               onPressed: (){
                 // setState(()  {
                 //   Navigator.of(context).pushNamed('PartyDetailPage');
                 // });
                 if (invoiceKey.currentState!
                     .validate()) {
                   invoiceKey.currentState!.save();
                   setState(()  {
                     Navigator.of(context).pushNamed('PartyDetailPage');
                   });
                 }

               },
               child: const Text("SAVE",style: TextStyle(
               color: Colors.black87,
             ),),),
              SizedBox(height: h*0.02,),

           ],
            ),
          ),
        ),
      ),
    );
  }
}
