import 'package:flutter/material.dart';

class Schedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:ListView(
          children: <Widget>[
            Image(image: AssetImage("images/TED_1.png"
            ),),
            SizedBox(height: 5,),
            Image(image:AssetImage("images/TED_2.png")),
            SizedBox(height: 5,),
          ],
        ),
      ),
    );
  }
}
