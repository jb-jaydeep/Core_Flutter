import 'dart:io';

import 'package:contact_diary_app/utils/utils.dart';
import 'package:contact_diary_app/views/screens/addPage.dart';
import 'package:contact_diary_app/views/screens/detailPage.dart';
import 'package:contact_diary_app/views/screens/edit_page.dart';
import 'package:contact_diary_app/views/screens/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: (isDark) ? ThemeMode.dark : ThemeMode.light,
      routes: {

        '/': (context) => Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Text("Contacts"),
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
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed('add_page');
            },
          ),
              body: (Globals.allContact.isNotEmpty) ? ListView.builder(
                      itemCount: Globals.allContact.length,
                      itemBuilder: (context, i) {
                        return ListTile(
                          onTap: (){

                           Navigator.of(context).pushNamed('detail_page',arguments:Globals.allContact[i] );
                          },
                          leading: CircleAvatar(
                            radius: 30,
                            foregroundImage:
                                FileImage(Globals.allContact[i].image as File),
                          ),
                          title: Text(
                              "${Globals.allContact[i].firstName} ${Globals.allContact[i].lastName}"),
                          subtitle:
                              Text("+91 ${Globals.allContact[i].phoneNumber}"),
                          trailing: IconButton(
                            icon: Icon(Icons.phone),
                            color: CupertinoColors.activeGreen,
                            onPressed: () async{
                              Uri url = Uri.parse("tel:+91${Globals.allContact[i].phoneNumber}");
                              await launchUrl(url);
                            },
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.import_contacts_outlined,
                            size: 200,
                          ),
                          Text(
                            "You have no contact Yet!!!",
                            style: TextStyle(
                              fontSize: 21,
                            ),
                          )
                        ],
                      ),
                    ),
            ),
        'add_page': (context) => const addPage(),
        'detail_page': (context) => const detailPage(),
        'edit_page': (context) => const editPage(),
      },
    );
  }
}
