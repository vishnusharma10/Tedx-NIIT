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
        color: Colors.black,
        child: GridView.count(
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: <Widget>[

            GestureDetector(
              child: Image(
                image: AssetImage("images/aditya_bhandari.png",),

              ),
              onLongPress: (){

              },
            ),
            GestureDetector(
              child: Image(
                image: AssetImage("images/Dhruv_Shah.png",),

              ),
            ),
            GestureDetector(
              child: Image(
                image: AssetImage("images/dig_Shalin.png",),

              ),
            ),
            GestureDetector(
              child: Image(
                image: AssetImage("images/manoj_final.png",),

              ),
            ),
            GestureDetector(
              child: Image(
                image: AssetImage("images/sushruti_krishna.png",),

              ),
            ),
            GestureDetector(
              child: Image(
                image: AssetImage("images/tirthak_saha.png",),

              ),
            ),
            GestureDetector(
              child: Image(
                image: AssetImage("images/vijay_rao.png",),

              ),
            ),
            GestureDetector(
              child: Image(
                image: AssetImage("images/Zoe_Modgill.png",),

              ),
            ),
          ], crossAxisCount: 2,
        ),
      ),
    );
  }
}
