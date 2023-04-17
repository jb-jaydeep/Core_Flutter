import 'package:flutter/material.dart';

import 'contactInfoPage_controller.dart';
class pdfPage extends StatefulWidget {
  const pdfPage({Key? key}) : super(key: key);

  @override
  State<pdfPage> createState() => _pdfPageState();
}

class _pdfPageState extends State<pdfPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pdf"),

      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: h,
          width: w,
          child: Container(
            padding: const EdgeInsets.all(16),
            height: h*0.99,
            width: w*0.99,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(height: 100,width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,),
                          ),
                          child: Image(image: FileImage(FinalImage!),),
                        ),
                      ),
                      const Spacer(),
                      Expanded(
                        flex: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.red,),),
                            Text("Address1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            Text("Addres2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            Text("address3",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Expanded(
                        flex: 3,
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("email",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            Text("phone",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            Text("birthdate",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          ],
                        ),),
                      ),
                    ],
                  ),
                  Divider(height: 20,color: Colors.black,thickness: 1.5),
                  Row(
                    children: [
                    Expanded(
                      flex: 4,
                      child: Text("\nObjectives\n",style: TextStyle(color: Colors.redAccent,fontSize: 21),),),
                  const Spacer(),
                  Expanded(
                    flex: 8,
                    child: Text("ObjectivesDetails\n\n\n",style: TextStyle(fontSize: 18),),),],),
              Divider(height: 20,color: Colors.black,thickness: 1.5),
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text("\nEducation\n",style: TextStyle(color: Colors.redAccent,fontSize: 21),),),
                      const Spacer(),
                      Expanded(
                        flex: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Course/Degree  :",style: TextStyle(fontSize: 18),),
                            Text("Institute Name  :",style: TextStyle(fontSize: 18),),
                            Text("Percentage        :",style: TextStyle(fontSize: 18),),
                          ],
                        ),),],),
                  Divider(height: 20,color: Colors.black,thickness: 1.5),
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text("\nExperience\n",style: TextStyle(color: Colors.redAccent,fontSize: 21),),),
                      const Spacer(),
                      Expanded(
                        flex: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Company name  :",style: TextStyle(fontSize: 18),),
                            Text("Role                      :",style: TextStyle(fontSize: 18),),
                            Text("Description         :",style: TextStyle(fontSize: 18),),
                          ],
                        ),),],),
                  Divider(height: 20,color: Colors.black,thickness: 1.5),
                  Row(
                    children: [
                       Expanded(
                        flex: 4,
                        child: Text("\nProjects\n",style: TextStyle(color: Colors.redAccent,fontSize: 21),),),
                      const Spacer(),
                      Expanded(
                        flex: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Project Title                    :",style: TextStyle(fontSize: 18),),
                            Text("Roles                               :",style: TextStyle(fontSize: 18),),
                            Text("Technologies                 :",style: TextStyle(fontSize: 18),),
                            Text("Description of Project         :\n\n\n",style: TextStyle(fontSize: 18),),
                          ],
                        ),),],),
                  Divider(height: 20,color: Colors.black,thickness: 1.5,),
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text("Language",style: TextStyle(color: Colors.redAccent,fontSize: 21),),),
                      const Spacer(),
                      Expanded(
                        flex: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hindi  English Gujarati",style: TextStyle(fontSize: 18),),

                          ],
                        ),),],),
                  Divider(height: 20,color: Colors.black,thickness: 1.5,),
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Text("\nAchievement\n",style: TextStyle(color: Colors.redAccent,fontSize: 21),),),
                      const Spacer(),
                      Expanded(
                        flex: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("achkieve",style: TextStyle(fontSize: 18),),
                            Text("achkieve",style: TextStyle(fontSize: 18),),

                          ],
                        ),),],),
                  Divider(height: 20,color: Colors.black,thickness: 1.5,),
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Text("\nTechnical Skill\n",style: TextStyle(color: Colors.redAccent,fontSize: 21),),),
                      const Spacer(),
                      Expanded(
                        flex: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Textfield",style: TextStyle(fontSize: 18),),
                            Text("Textfield",style: TextStyle(fontSize: 18),),

                          ],
                        ),),],),
                  Divider(height: 20,color: Colors.black,thickness: 1.5,),
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text("\nReference\n",style: TextStyle(color: Colors.redAccent,fontSize: 21),),),
                      const Spacer(),
                      Expanded(
                        flex: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Reference name  :",style: TextStyle(fontSize: 18),),
                            Text("Designation                     :",style: TextStyle(fontSize: 18),),
                            Text("Organization         :",style: TextStyle(fontSize: 18),),
                          ],
                        ),),],),
                ],
              ),
            ),

          ),
        ),
      ),
    );
  }
}
