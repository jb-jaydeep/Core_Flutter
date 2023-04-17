import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/componants/image_utils.dart';
import 'contactInfoPage_controller.dart';

class CarrierObjectivesPage extends StatefulWidget {
  const CarrierObjectivesPage({Key? key}) : super(key: key);

  @override
  State<CarrierObjectivesPage> createState() => _CarrierObjectivesPageState();
}

class _CarrierObjectivesPageState extends State<CarrierObjectivesPage> {
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
                carrierObjectivePageDescription = carrierObjectiveDescriptionController.text;
               // carrierObjectiveDescriptionController.clear();
                carrierObjectiveExperienceController.clear();
              // carrierObjectivePageDescription = null;
                carrierObjectiveDesignation = null;
              });
              Navigator.of(context).pop();
            },
            child: const Icon(CupertinoIcons.back)),
        title: const Text(
          "Carrier Objective",
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Form(
          key: carrierObjectivePageKey,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(16),
              color: Colors.grey.shade200,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: 300,
                    decoration: BoxDecoration(
                      color: CupertinoColors.white,
                      borderRadius: BorderRadiusDirectional.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            "Carrer Objective",
                            style: TextStyle(
                              fontSize: 18,
                              letterSpacing: 1.5,
                              color: CupertinoColors.systemBlue,
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: carrierObjectiveDescriptionController,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter Description Please...";
                            }
                            return null;
                          },
                          maxLines: 6,
                          decoration: const InputDecoration(
                            hintText: 'Description',
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
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: 190,
                    decoration: BoxDecoration(
                      color: CupertinoColors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            "Current Designation (Experienced Candidate)",
                            style: TextStyle(
                              fontSize: 18,
                              letterSpacing: 1.5,
                              color: CupertinoColors.systemBlue,
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: carrierObjectiveExperienceController,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter your Designation Please...";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            setState(() {
                              carrierObjectiveDesignation = val;
                            });
                          },
                          decoration: const InputDecoration(
                            hintText: 'Software Engineer',
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
                            if (carrierObjectivePageKey.currentState!
                                .validate()) {
                              carrierObjectivePageKey.currentState!.save();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
