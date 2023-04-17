import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contactInfoPage_controller.dart';
class ReferencePage extends StatefulWidget {
  const ReferencePage({Key? key}) : super(key: key);

  @override
  State<ReferencePage> createState() => _ReferencePageState();
}

class _ReferencePageState extends State<ReferencePage> {
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
          "Reference",
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
            key: referenceFormkey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 400,
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
                              "Reference Name",
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
                              controller: ReferenceNameController,
                              textInputAction: TextInputAction.next,
                              onSaved: (val) {
                                setState(() {
                                  referenceName = val;
                                });
                              },
                              decoration: const InputDecoration(
                                hintText: 'Suresh Shah',
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
                              "Designation",
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
                              controller: ReferencePageDesignationController,
                              textInputAction: TextInputAction.next,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Designation Please...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  referencePageDesignation = val;
                                });
                              },
                              decoration: const InputDecoration(
                                hintText: 'Marketing Manager',
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
                              "Organization/Institute",
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
                                controller: referencePageOrganizationController,
                              textInputAction: TextInputAction.done,
                              onSaved: (val) {
                                setState(() {
                                 referencePageOrganization= val;
                                });
                              },
                              decoration: const InputDecoration(
                                hintText: 'Green Energy Pvt.LTD',
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
                                if (referenceFormkey.currentState!.validate()) {
                                  referenceFormkey.currentState!.save();
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
