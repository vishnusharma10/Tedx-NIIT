import 'package:flutter/material.dart';

class Speakers extends StatefulWidget {
  @override
  _SpeakersState createState() => _SpeakersState();
}

class _SpeakersState extends State<Speakers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[

            Image(
              image: AssetImage("images/aditya_bhandari.png"),
            ),
            Image(image: AssetImage("images/Dhruv_Shah.png")),
            Image(image: AssetImage("images/dig_Shalin.png")),
            Image(image: AssetImage("images/manoj_final.png")),
            Image(image: AssetImage("images/sushruti_krishna.png")),
            Image(image: AssetImage("images/tirthak_saha.png")),
            Image(image: AssetImage("images/vijay_rao.png")),
            Image(image: AssetImage("images/Zoe_Modgill.png"))
          ],
        ),
      ),
    );
  }
}
