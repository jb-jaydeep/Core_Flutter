import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invoice_generator/Screens/utils/All_Utils.dart';
class PartyDetailPage extends StatefulWidget {
  const PartyDetailPage({Key? key}) : super(key: key);

  @override
  State<PartyDetailPage> createState() => _PartyDetailPageState();
}

class _PartyDetailPageState extends State<PartyDetailPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Invoice Generator"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade500,
        leading: IconButton(onPressed: (){
        setState(() {
          Navigator.of(context).pop();
        });
        }, icon: Icon(CupertinoIcons.back,),),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          height: h,
          width: w,
          color: Colors.blueGrey,
          child: Form(
            key: partyKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20,),
                const Text("Customer Details...",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                  fontSize: 21,),),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: partyNameController,
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Customer's Company Name Please...";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    setState(() {
                      partyName = val;
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: 'Shreeji Impex / Company Name',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: partyAddressController,
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Customer's address Please...";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    setState(() {
                      partyAddress = val;
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: "Enter Customer's address here",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),

                ),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: partyAddress1Controller,
                  textInputAction: TextInputAction.next,
                  onSaved: (val) {
                    setState(() {
                      partyAddress1 = val;
                    });
                  },
                  decoration: const InputDecoration(
                    hintText: "Enter Customer's address here (Optional)",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),

                ),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: partyGstController,
                  textInputAction: TextInputAction.next,
                  // validator: (val) {
                  //   if (val!.isEmpty) {
                  //     return "Enter Customer's Gst no. Please...";
                  //   }
                  //   return null;
                  // },
                  onSaved: (val) {
                    setState(() {
                      partyGst= val;
                    });
                  },
                  decoration:  const InputDecoration(
                    hintText: "Enter Customer's Gst no.",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: partyContactController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Customer's Contact No. Please...";
                    } else if (val.length != 10) {
                      return "Enter a Valid Contact No.";
                    }
                    return null;
                  },
                  onSaved: (val) {
                    partyContact = val;
                  },
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration:  const InputDecoration(
                    hintText: "Enter Customer's Contact no.",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                ElevatedButton(
                  style:ButtonStyle(
                    minimumSize:MaterialStateProperty.all(const Size(100, 50),) ,
                    backgroundColor:MaterialStateProperty.all(Colors.white,),),
                  onPressed: (){
                    if (partyKey.currentState!
                        .validate()) {
                      partyKey.currentState!.save();
                      setState(() {
                        Navigator.of(context).pushNamed('itemPage');
                      });
                    }

                  },
                  child: const Text("SAVE",style: TextStyle(
                    color: Colors.black87,
                  ),),),
                const SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
