import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/componants/image_utils.dart';
import 'contactInfoPage_controller.dart';
class ExperiencesPage extends StatefulWidget {
  const ExperiencesPage({Key? key}) : super(key: key);
  @override
  State<ExperiencesPage> createState() => _ExperiencesPageState();
}
class _ExperiencesPageState extends State<ExperiencesPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        toolbarHeight: 150,
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(CupertinoIcons.back)),
        title: const Text(
          "Experience",
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(18),
              color: mybackgroundColor,
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius : BorderRadius.circular(8),
                  ),
                  child: Form(
                    key: contactFormKey,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         const SizedBox(height: 15,),
                          const Text(
                            "Company Name",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                            ),
                          ),
                        const SizedBox(height: 20,),
                          TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Name Please...";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              experiencePageCompanyName = val;
                            },
                            controller:  experiencePageCompanyNameController,
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                              hintText: "New Enterprise,San Francisco",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                         const SizedBox(height: 20,),
                        const   Text(
                            "Role",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                            ),
                          ),
                         const SizedBox(height: 20,),
                          TextFormField(
                            controller: experiencePageRoleController,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your role Please...";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              experiencePageRole = val;
                            },
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                              hintText: "Quality Test Engineer",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                         const SizedBox(height: 20,),
                         const  Text(
                            "Description of role(Optional)",
                            style:  TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 20,),
                          TextFormField(
                            maxLines: 4,
                            controller: experiencePagePostController,
                            onSaved: (val) {
                              experiencePagePost = val;
                            },
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.done,
                            decoration: const InputDecoration(
                              hintText:
                                  "Working with team members to come up with new concepts and product analysis...",
                              hintStyle: TextStyle(
                                  color: Colors.grey, letterSpacing: 1.5),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey),
                              ),
                            ),
                            onFieldSubmitted: (val) {
                              if (experiencePageFormKey.currentState!
                                  .validate()) {
                                experiencePageFormKey.currentState!.save();
                              }
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
