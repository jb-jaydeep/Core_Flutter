import 'package:flutter/material.dart';

import 'font_style_utils.dart';
class FinalPage extends StatefulWidget {
  const FinalPage({Key? key}) : super(key: key);

  @override
  State<FinalPage> createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamedAndRemoveUntil('page2', (route) => false);
          },
          child: Icon(Icons.home)),
      ),
      body:Center(
        child: Text("Your order successfully placed",style:  myprizeFontStyle,),
      ) ,
    );
  }
}

