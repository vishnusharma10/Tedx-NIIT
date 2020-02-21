import 'package:flutter/material.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';
import 'package:social_media_buttons/social_media_buttons.dart';



class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(20),
              height: height/2,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.black,Colors.red,Colors.black]),
                borderRadius: BorderRadius.all(Radius.circular(100))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    child: Container(
                      width:width/1.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20),),
                        gradient: LinearGradient(
                          colors: [Colors.red,Colors.black,Colors.red]
                        )
                      ),
                      child: Center(
                        child: Text("Sponsors",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    onTap: (){
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      width: width/1.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20),),
                          gradient: LinearGradient(colors: [Colors.red,Colors.black,Colors.red])
                      ),
                      child: Center(
                        child: Text("Team",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    onTap: (){
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      width: width/1.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20),),
                          gradient: LinearGradient(colors: [Colors.red,Colors.black,Colors.red])
                      ),
                      child: Center(
                        child: Text("Follow Us",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    onTap: (){
                    },
                  ),
                  Row(
                    children: <Widget>[
                    ],
                  )
                ],
              ),
            ),
            Expanded(child: Container(child: Image(image: AssetImage("images/TEDxNIITUniversity3.png"),),)),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

  }
}
