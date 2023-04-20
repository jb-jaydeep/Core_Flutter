import 'dart:io';

import 'package:contact_diary_app/views/screens/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/utils.dart';
class editPage extends StatefulWidget {
  const editPage({Key? key}) : super(key: key);

  @override
  State<editPage> createState() => _editPageState();
}
ImagePicker picker = ImagePicker();
File? image;
class _editPageState extends State<editPage> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    Contact data = ModalRoute.of(context)!.settings.arguments as Contact;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: (isDark) ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Edit"),
          leading: IconButton(
            icon: const Icon(
              CupertinoIcons.back,
            ),
            onPressed: () {
              setState(() {
                Navigator.of(context).pop();
              });
            },
          ),
          actions: [
            ThemeButton(
              isDark: isDark,
              onThemeChanged: (value) {
                setState(() {
                  isDark = value;
                });
              },
            ),
            IconButton(
              onPressed: () async{
                if (editPageKey.currentState!.validate()) {
                  editPageKey.currentState!.save();
                 data.firstName = firstName!;
                 data.lastName = lastName!;
                 data.phoneNumber = phoneNumber!;
                 data.email = email!;
                 data.image = (image!=null)?image:data.image;

                  await  Navigator.of(context)
                     .pushNamedAndRemoveUntil('/', (route) => false);
                  setState(() {
                  });
                }
              },
              icon: const Icon(Icons.check),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
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
                      onPressed: () {
                        showGeneralDialog(
                            context: context,
                            pageBuilder: (context, _, __) {
                              return Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
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
                                        const Text(
                                          "Profile Photo",
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 80,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: ElevatedButton(
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.blue.shade300),
                                                ),
                                                onPressed: () async {
                                                  XFile? imageXfile =
                                                  await picker.pickImage(
                                                      source:
                                                      ImageSource.camera);
                                                  String ImagePath =
                                                      imageXfile!.path;
                                                  setState(() {
                                                    image = File(ImagePath);
                                                    Navigator.of(context).pop();
                                                  });
                                                },
                                                child:
                                                Icon(CupertinoIcons.camera),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                                flex: 1,
                                                child: ElevatedButton(
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.blue.shade300),
                                                  ),
                                                  onPressed: () async {
                                                    XFile? imageXfile =
                                                    await picker.pickImage(
                                                        source: ImageSource
                                                            .gallery);
                                                    String ImagePath =
                                                        imageXfile!.path;
                                                    setState(() {
                                                      image = File(ImagePath);
                                                      Navigator.of(context).pop();
                                                    });
                                                  },
                                                  child:
                                                  Icon(CupertinoIcons.folder),
                                                )),
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
              Container(
                height: 550,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: Form(
                  key: editPageKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "First Name",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 10,),
                      TextFormField(
                        controller: addPageFormFirstNameController,
                        textInputAction: TextInputAction.next,
                        validator: (val){
                          if(val!.isEmpty){
                            return "  Enter your first Name...";
                          }else {
                            return null;
                          }
                        } ,
                        onSaved: (val) {
                          setState(() {
                            firstName = val;
                          });
                        },
                        decoration: const InputDecoration(
                          hintText:"Enter First Name...",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Text(
                        "Last Name",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 10,),
                      TextFormField(
                        controller: addPageFormLastNameController,
                        textInputAction: TextInputAction.next,
                        validator: (val){
                          if(val!.isEmpty){
                            return "Enter your last Name...";
                          }else {
                            return null;
                          }
                        } ,
                        onSaved: (val) {
                          setState(() {
                            lastName = val;
                          });
                        },
                        decoration: const InputDecoration(
                          hintText: "Enter Last Name...",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Text(
                        "Phone Number",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 10,),
                      TextFormField(
                        controller: addPageFormPhoneNumberController,
                        textInputAction: TextInputAction.next,
                        validator: (val){
                          if(val!.isEmpty){
                            return "Enter your phone Number...";
                          }else {
                            return null;
                          }
                        } ,
                        onSaved: (val) {
                          setState(() {
                            phoneNumber = val;
                          });
                        },
                        decoration: const InputDecoration(
                          hintText: "Enter Contact No...",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 10,),
                      TextFormField(
                        controller: addPageFormEmailController,
                        textInputAction: TextInputAction.done,
                        validator: (val){
                          if(val!.isEmpty){
                            return "Enter your Email...";
                          }else {
                            return null;
                          }
                        } ,
                        onSaved: (val) {
                          setState(() {
                            email = val;
                          });
                        },
                        decoration: const InputDecoration(
                          hintText: "Enter Email...",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
