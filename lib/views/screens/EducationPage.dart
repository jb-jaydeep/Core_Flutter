import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contactInfoPage_controller.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        toolbarHeight: 150,
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(CupertinoIcons.back)),
        title: Text(
          "Education",
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Expanded(
          child: Form(
            key: educationFormkey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 500,
                    decoration: BoxDecoration(
                      color: CupertinoColors.white,
                      borderRadius: BorderRadiusDirectional.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: const Text(
                              "Course/degree",
                              style: TextStyle(
                                fontSize: 18,
                                letterSpacing: 1.5,
                                color: CupertinoColors.systemBlue,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              controller: educationPageDegreeController,
                              textInputAction: TextInputAction.next,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your degree Please...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                 educationPageDegree = val;
                                });
                              },
                              decoration: const InputDecoration(
                                hintText: 'B.Tech Information Technology',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          //Technology baki che
                          const Expanded(
                            flex: 1,
                            child: Text(
                              "School/Collage/Institute",
                              style: TextStyle(
                                fontSize: 18,
                                letterSpacing: 1.5,
                                color: CupertinoColors.systemBlue,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              controller: educationPageInstituteController,
                              textInputAction: TextInputAction.next,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Institute name Please...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  educationPageInstitute = val;
                                });
                              },
                              decoration: const InputDecoration(
                                hintText: 'Bhagvan Mahavir University',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Expanded(
                            flex: 1,
                            child: const Text(
                              "Percentage/CGPA",
                              style: TextStyle(
                                fontSize: 18,
                                letterSpacing: 1.5,
                                color: CupertinoColors.systemBlue,
                              ),
                            ),

                          ),
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              controller: educationPagePercentageController,
                              textInputAction: TextInputAction.next,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Percentage Please...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {

                                   educationPagePercentage = val;
                                });
                              },
                              decoration: const InputDecoration(
                                hintText: '70% or 7.0 CGPA',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Expanded(
                            flex: 1,
                            child: const Text(
                              "Year of Pass",
                              style: TextStyle(
                                fontSize: 18,
                                letterSpacing: 1.5,
                                color: CupertinoColors.systemBlue,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              controller: educationPagePassingYearController,
                              textInputAction: TextInputAction.done,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your passing year Please...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  educationPagePassingYear = val;
                                });
                              },
                              decoration: const InputDecoration(
                                hintText: '2017',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                              ),
                              onFieldSubmitted: (val) {
                                if (educationFormkey.currentState!.validate()) {
                                  educationFormkey.currentState!.save();
                                }
                              },
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
