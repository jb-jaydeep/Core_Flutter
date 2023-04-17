import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_app/views/screens/contactInfoPage_controller.dart';
class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
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
              projectFormPageKey.currentState!.save();
            });
              Navigator.of(context).pop();
            },
            child: const Icon(CupertinoIcons.back)),
        title: const Text(
          "Projects",
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
          key: projectFormPageKey,
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
                    padding:const  EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          flex: 1,
                          child: Text("Project title",style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1.5,
                            color: CupertinoColors.systemBlue,
                          ),),
                        ),
                        Expanded(
                          flex:2,
                          child: TextFormField(
                            controller:  projectPageTitleController,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter title Please...";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                projectPageTitle = val;
                              });
                            },
                            decoration: const InputDecoration(
                              hintText: 'Resume Builder App',
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
                          child: Text("Roles",style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1.5,
                            color: CupertinoColors.systemBlue,
                          ),),
                        ),
                        Expanded(
                          flex:2,
                            child: TextFormField(
                              controller: ProjectPageRolesController,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Roles Please...";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                projectPageRole = val;
                              });
                            },
                            decoration: const InputDecoration(
                              hintText: 'Organize team members, Code analysis',
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
                       const Expanded(
                         flex: 1,
                         child: Text("Technologies",style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1.5,
                            color: CupertinoColors.systemBlue,
                          ),),
                       ),
                        Expanded(
                          flex: 2,
                          child: TextFormField(
                            controller: ProjectPageTechnologiesController,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Technologies name Please...";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                projectPageTechnologies = val;
                              });
                            },
                            decoration: const InputDecoration(
                              hintText: 'Programmers',
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
                       const Expanded(
                         flex: 1,
                         child: Text("Project Description",style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1.5,
                            color: CupertinoColors.systemBlue,
                          ),),
                       ),
                        Expanded(
                          flex: 2,
                          child: TextFormField(
                            controller: ProjectPageDescriptionController,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your project description Please...";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              setState(() {
                                projectPageDescription = val;
                              });
                            },
                            decoration: const InputDecoration(
                              hintText: 'Programmers',
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
                            flex: 2,
                            child: Center(child: ElevatedButton(onPressed: (){}, child: const Text("   SAVE   "),))),
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
