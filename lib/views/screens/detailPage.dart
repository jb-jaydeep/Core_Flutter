import 'dart:io';

import 'package:contact_diary_app/utils/utils.dart';
import 'package:contact_diary_app/views/screens/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
class detailPage extends StatefulWidget {
  const detailPage({Key? key}) : super(key: key);

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
   Contact contact = ModalRoute.of(context)!.settings.arguments as Contact;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: (isDark) ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Contacts"),
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

          ],
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(height: 100,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Spacer(flex: 4,),
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey.shade200,
                      foregroundImage: (contact.image!= null) ? FileImage(contact.image as File) : null,
                    ),
                    const Spacer(),

                    IconButton(icon: const Icon(CupertinoIcons.delete), onPressed: () async{
                      Globals.allContact.remove(contact);
                      await Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
                      setState(() {

                      });
                    },),
                    IconButton(icon: const Icon(Icons.edit), onPressed: () async{
                      contact.firstName = addPageFormFirstNameController.text;
                      contact.lastName = addPageFormLastNameController.text;
                      contact.email = addPageFormEmailController.text;
                      contact.phoneNumber = addPageFormPhoneNumberController.text;
                     // contact.image = image!;
                      await Navigator.of(context).pushNamed('edit_page', arguments: contact);
                      setState(() {
                        
                      });

                    },),

                  ],
                ),
                const SizedBox(height: 20,),
                Text("${contact.firstName} ${contact.lastName}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                const SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text("+91 $phoneNumber",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                    const Divider(height: 30,color: Colors.black,),
                    Row(
                      children: [
                        const Spacer(),
                        FloatingActionButton(elevation: 0,onPressed: ()async{
                          Uri url = Uri.parse("tel:+91${contact.phoneNumber}");
                          await launchUrl(url);
                        },backgroundColor: Colors.green,child:const Icon(CupertinoIcons.phone,color: Colors.white,),),
                        const Spacer(),
                        FloatingActionButton(elevation: 0,onPressed: ()async{
                          Uri url = Uri.parse("sms:+91${contact.phoneNumber}");
                          await launchUrl(url);
                        },backgroundColor: Colors.yellow,child:const Icon(Icons.message,color: Colors.white,),),
                        const Spacer(),
                        FloatingActionButton(elevation: 0,onPressed: ()async{
                          Uri url = Uri.parse("mailto:+91${contact.email}");
                          await launchUrl(url);
                        },backgroundColor: Colors.blueAccent,child:const Icon(CupertinoIcons.mail,color: Colors.white,),),
                        const Spacer(),
                        FloatingActionButton(elevation: 0,onPressed: ()async{
                         await Share.share("${contact.firstName} ${contact.lastName} : +91 ${contact.phoneNumber}");
                        },backgroundColor: Colors.orange,child:const Icon(Icons.share,color: Colors.white,),),
                        const Spacer(),

                      ],
                    ),
                    const Divider(height: 40,color: Colors.black,),
                  ],
                ),
              ],
            ),
          ),
        ),

      ),
    );

  }
}
