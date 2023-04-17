import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder_app/utils/componants/image_utils.dart';

import 'contactInfoPage_controller.dart';

class ContactInfoPage extends StatefulWidget {
  const ContactInfoPage({Key? key}) : super(key: key);

  @override
  State<ContactInfoPage> createState() => _ContactInfoPageState();
}

class _ContactInfoPageState extends State<ContactInfoPage> {
  ImagePicker picker = ImagePicker();
  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myAppColor,
        toolbarHeight: 100,
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              setState(() {
                // contactInfoPageNameController.clear();
                // contactInfoPageEmailController.clear();
                // contactInfoPagePhoneController.clear();
                // contactInfoPageAddress1Controller.clear();
                // contactInfoPageAddress2Controller.clear();
                // contactInfoPageAddress3Controller.clear();
                //
                // contactInfoPageName = null;
                // contactInfoPageEmail = null;
                // contactInfoPagePhone = null;
                // contactInfoPageAddress1 = null;
                // contactInfoPageAddress2 = null;
                // contactInfoPageAddress3 = null;
              });
              Navigator.of(context).pop();
            },
            child: const Icon(CupertinoIcons.back)),
        title: const Text(
          "Resume Workspace",
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        contactBorder = commonBorder;
                        photoBorder = commonBorder1;
                        initialIndex = 0;
                      });
                    },
                    child: Container(
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900,
                        border: contactBorder,
                      ),
                      child: const Text(
                        "Contact",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        photoBorder = commonBorder;
                        contactBorder = commonBorder1;
                        initialIndex = 1;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900,
                        border: photoBorder,
                      ),
                      height: 60,
                      alignment: Alignment.center,
                      child: const Text(
                        "Photo",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 11,
            child: Container(
              padding: const EdgeInsets.all(18),
              color: mybackgroundColor,
              child: IndexedStack(
                index: initialIndex,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        color: Colors.white,
                        height: 550,
                        width: double.infinity,
                        child: Form(
                          key: contactFormKey,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Expanded(
                                      flex: 6,
                                      child: Icon(
                                        Icons.person,
                                        size: 50,
                                      )),
                                  const Spacer(),
                                  Expanded(
                                    flex: 30,
                                    child: TextFormField(
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter your Name Please...";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        contactInfoPageName = val;
                                      },
                                      controller: contactInfoPageNameController,
                                      textInputAction: TextInputAction.next,
                                      decoration: const InputDecoration(
                                        hintText: "Name",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  const Expanded(
                                      flex: 5,
                                      child: Icon(
                                        Icons.email_outlined,
                                        size: 50,
                                      )),
                                  const Spacer(),
                                  Expanded(
                                    flex: 30,
                                    child: TextFormField(
                                      controller: contactInfoPageEmailController,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter your Email Please...";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        contactInfoPageEmail = val;
                                      },
                                      keyboardType: TextInputType.emailAddress,
                                      textInputAction: TextInputAction.next,
                                      decoration: const InputDecoration(
                                        hintText: "Email",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  const Expanded(
                                      flex: 5,
                                      child: Icon(
                                        Icons.phone_android,
                                        size: 50,
                                      )),
                                  const Spacer(),
                                  Expanded(
                                    flex: 30,
                                    child: TextFormField(
                                      controller: contactInfoPagePhoneController,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter your Contact No. Please...";
                                        } else if (val.length != 10) {
                                          return "Enter a Valid Contact No.";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        contactInfoPagePhone = val;
                                      },
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.next,
                                      decoration: const InputDecoration(
                                        hintText: "Contact No.",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  const Expanded(
                                      flex: 5,
                                      child: Icon(
                                        CupertinoIcons.location_solid,
                                        size: 50,
                                      )),
                                  const Spacer(),
                                  Expanded(
                                    flex: 30,
                                    child: TextFormField(
                                      controller: contactInfoPageAddress1Controller,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter your address Please...";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        contactInfoPageAddress1 = val;
                                      },
                                      textInputAction: TextInputAction.next,
                                      decoration: const InputDecoration(
                                        hintText:
                                            "Address (Street,Building No)",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  const Expanded(
                                    flex: 5,
                                    child: SizedBox(),
                                  ),
                                  const Spacer(),
                                  Expanded(
                                    flex: 30,
                                    child: TextFormField(
                                      controller:contactInfoPageAddress2Controller,
                                      onSaved: (val) {
                                        contactInfoPageAddress2= val;
                                      },
                                      textInputAction: TextInputAction.next,
                                      decoration: const InputDecoration(
                                        hintText: "Address Line 2",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  const Expanded(
                                    flex: 5,
                                    child: SizedBox(),
                                  ),
                                  const Spacer(),
                                  Expanded(
                                    flex: 30,
                                    child: TextFormField(
                                      controller: contactInfoPageAddress3Controller,
                                      onSaved: (val) {
                                        contactInfoPageAddress3 = val;
                                      },
                                      textInputAction: TextInputAction.done,
                                      decoration: const InputDecoration(
                                        hintText: "Address Line 3",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      onFieldSubmitted: (val) {
                                        if (contactFormKey.currentState!
                                            .validate()) {
                                          contactFormKey.currentState!.save();
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.white,
                    height: 400,
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.grey.shade200,
                          foregroundImage:
                              (image != null) ? FileImage(image as File) : null,
                          child: const Text(
                            "ADD",
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          mini: true,
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
                                                  backgroundColor:MaterialStateProperty.all(myAppColor) ,
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
                                                  backgroundColor:MaterialStateProperty.all(myAppColor) ,
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
                          child: const Icon(
                            CupertinoIcons.add,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
