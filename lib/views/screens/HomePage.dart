import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/componants/image_utils.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myAppColor,
        toolbarHeight: 130,
        centerTitle: true,
        title: Column(
          children: const [
            Text("Resume Builder",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,),),
            SizedBox(
              height: 40,
            ),
            Text("RESUMES",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
          ],
        ),
        elevation: 0,
      ),
      body: DoubleBackToCloseApp(snackBar: SnackBar(
        content: Text("Are your sure to exit?"),
      ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset("assets/images/open-cardboard-box.png",width: 100,),
              const Text("No Resume + Create New Resumes",style: TextStyle(
                fontSize: 21,
                color: CupertinoColors.systemGrey,
              ),),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        child: const Icon(CupertinoIcons.add,size: 40,),
        onPressed: (){
          Navigator.of(context).pushNamed("BuildOptionPage");
        },
      ),
    );
  }
}
