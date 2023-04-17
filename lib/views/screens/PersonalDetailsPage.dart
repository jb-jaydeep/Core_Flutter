import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/componants/image_utils.dart';
import 'contactInfoPage_controller.dart';
class PersonalDetailsPage extends StatefulWidget {
  const PersonalDetailsPage({Key? key}) : super(key: key);

  @override
  State<PersonalDetailsPage> createState() => _PersonalDetailsPageState();
}

class _PersonalDetailsPageState extends State<PersonalDetailsPage> {
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
          "Personal Details",
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
    body: Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        padding: EdgeInsets.all(25),
        height: double.infinity,
        color: CupertinoColors.white,
        child: Form(
          key: personalDetailsPageKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15,),
                Text("DOB",style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                ),),
                const SizedBox(height: 15,),
                TextFormField(
                  controller: PersonalDetailsPageBirthdayCOntroller,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter your Birthdate Please...";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    setState(() {
                      personalDetailsPagedob = val;
                    });
                  },
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    hintText: 'DD/MM/YYYY',
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
                     if (personalDetailsPageKey.currentState!
                        .validate()) {
                      personalDetailsPageKey.currentState!.save();
                    }
                  },
                ),
                const SizedBox(height: 15,),
                Text("Material Status",style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                ),),
               const SizedBox(height: 15,),
               RadioListTile(value: "Single", title: Text("Single"),groupValue: martial_status, onChanged: (val){setState(() {martial_status = val!;});}),
               RadioListTile(value: "Married",title: Text("Married"), groupValue: martial_status, onChanged: (val){setState(() {martial_status = val!;});}),
                const SizedBox(height: 15,),
                Text("Language Known",style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                ),),
                const SizedBox(height: 15,),
                CheckboxListTile(title: Text("English"), value: isEnglish, onChanged: (newValue) {setState(() {isEnglish = newValue!;});}, controlAffinity: ListTileControlAffinity.leading, ), //  <-- leading Checkbox
                CheckboxListTile(title: Text("Hindi"), value: isHindi, onChanged: (newValue) {setState(() {isHindi = newValue!;});}, controlAffinity: ListTileControlAffinity.leading, ), //  <-- leading Checkbox
                CheckboxListTile(title: Text("Gujarati"), value: isGujarati, onChanged: (newValue) {setState(() {isGujarati = newValue!;});}, controlAffinity: ListTileControlAffinity.leading, ), //  <-- leading Checkbox
                const SizedBox(height: 15,),
                Text("Nationality",style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                ),),
                const SizedBox(height: 15,),
                TextFormField(
                  controller: nationalityController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter your Nationality Please...";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    setState(() {
                      nationality = val;
                    });
                  },
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    hintText: 'Indian',
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
                const SizedBox(height: 15,),
                Center(child: ElevatedButton(onPressed: (){
                  if (personalDetailsPageKey.currentState!
                      .validate()) {
                    personalDetailsPageKey.currentState!.save();

                  }
                  setState(() {
                    Navigator.of(context).pop('/');
                  });
                }, child: const Text("   SAVE   "),)),
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
