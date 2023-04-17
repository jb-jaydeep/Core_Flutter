import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_app/views/screens/contactInfoPage_controller.dart';

class TechnicalSkillsPage extends StatefulWidget {
  const TechnicalSkillsPage({Key? key}) : super(key: key);

  @override
  State<TechnicalSkillsPage> createState() => _TechnicalSkillsPageState();
}

class _TechnicalSkillsPageState extends State<TechnicalSkillsPage> {
  List <TextEditingController> technical_skills_textField = [];
  @override
  void initState() {
    super.initState();
    technical_skills_textField.add(TextEditingController());
    technical_skills_textField.add(TextEditingController());
    TechnicalSkill.clear();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        toolbarHeight: 150,
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              setState(() {
                technical_skills_textField.forEach((e) {TechnicalSkill.add(e.text );});
              });
              Navigator.of(context).pop();
            },
            child: Icon(CupertinoIcons.back)),
        title: Text(
          "Technical Skills",
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Padding(
          padding: EdgeInsets.all(16),
          child: Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.topCenter,
            width: double.infinity,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Enter Your skills",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 16,),
                  ...technical_skills_textField
                      .map((e) => Row(
                            children:  [
                               Expanded(
                                flex: 9,
                                child: TextField(
                                  controller: e,
                                  decoration: InputDecoration(
                                    hintText: "C Programming, Web Technical",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                child: IconButton(
                                  icon:const Icon(CupertinoIcons.delete),
                                  onPressed: () {
                                   setState(() {
                                     technical_skills_textField.remove(e);
                                   });
                                  },
                                ),
                              ),
                            ],
                          ))
                      .toList(),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                        setState(() {
                          technical_skills_textField.add(TextEditingController());
                        });
                        },
                        child: Icon(
                          Icons.add,
                          color: Colors.grey,
                        ),
                      )),
                ],
              ),
            ),
          )),
    );
  }
}
