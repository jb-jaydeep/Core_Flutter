import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/componants/image_utils.dart';

import 'contactInfoPage_controller.dart';

class BuildOptionPage extends StatefulWidget {
  const BuildOptionPage({Key? key}) : super(key: key);

  @override
  State<BuildOptionPage> createState() => _BuildOptionPageState();
}

class _BuildOptionPageState extends State<BuildOptionPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        toolbarHeight: 100,
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
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
            flex: 1,
            child: Container(
              color: Colors.blue.shade900,
              height: 60,
              alignment: Alignment.center,
              child: const Text("Build Options",style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),),
            ),
          ),
          Expanded(
            flex: 9,
            child: Padding(padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  children: AllBuildoptions.map((e) => GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed(e["route"]);
                    },
                    child: Card(
                      child: Column(
                        children: [
                          ListTile(
                            leading: SizedBox(
                              width: 30,
                              child: Image.asset(e['image'],),
                            ),
                            trailing: const SizedBox(
                              child: Icon(CupertinoIcons.forward),
                            ),
                            title: Text(e['title'],style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),

                          ),
                        ],
                      ),
                    ),
                  ),).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
