import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';
import 'package:tedx_niit/constants/strings.dart';
import 'package:tedx_niit/models/Team.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  double height;
  double width;

  Future<void> _launched;
  List<String> _launchUrls = [
    'https://www.instagram.com/tedxniituniversity/',
    'https://www.facebook.com/tedxniituniversity/',
    'https://tedxniituniversity.com/'
  ];

  void showAlertDialogOnOkCallback() {
    AwesomeDialog(
      context: context,
      padding: EdgeInsets.all(10),
      animType: AnimType.SCALE,
      dialogType: DialogType.INFO,
      customHeader: Container(
        child: Icon(Icons.monetization_on,size: 80,color: Colors.black,),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                    child: Image(image:AssetImage("images/Tastebitz.png"),
                    ),
                  height: height/8,
                ),
                Container(
                  child: Image(image:AssetImage("images/CubeHostIndiaLogo.png"),
                  ),
                  height: height/8,
                ),
                Container(
                  child: Image(image:AssetImage("images/smaash_logo.png"),
                  ),
                  height: height/8,
                ),
                Container(
                  child: Image(image:AssetImage("images/shutterstock_logo.png"),
                  ),
                  height: height/8,
                ),
              ],
            ),
          ),
        ),
      ),
      tittle: 'This is Ignored',
      desc: 'This is also Ignored',
    ).show();
  }

  Future<void> _launchUniversal(String url)async{
    if(await canLaunch(url)){
      final bool nativeAppLaunchSucceeded = await launch(url,forceSafariVC: false,universalLinksOnly: true);
      print(nativeAppLaunchSucceeded);
      if(!nativeAppLaunchSucceeded){
        await launch(url,forceSafariVC: true);
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(20),
              height: height / 2,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                  /*gradient: LinearGradient(
                      colors: [Colors.white,Colors.black, Colors.black, Colors.white]),
                  */borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    child: Container(
                      width: width / 1.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          gradient: LinearGradient(
                              colors: [Colors.red, Colors.red])),
                      child: Center(
                        child: Text(
                          "Sponsors",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      showAlertDialogOnOkCallback();
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      width: width / 1.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          gradient: LinearGradient(
                              colors: [Colors.red, Colors.red])),
                      child: Center(
                        child: Text(
                          "Team",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      showModalBottomSheet(context: context, builder: (context){return Team();});
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          "Follow Us",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10),),
                            color: Colors.white
                          ),
                          width: width / 8,
                          child: Image(
                            image: AssetImage("images/Facebook.png"),
                          ),
                        ),
                        onTap: (){
                          _launchUniversal(_launchUrls[1]);
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          height: height/8,
                          width: width/8,
                          child: Image(image: AssetImage("images/Website.png"),),
                        ),
                        onTap: (){
                          _launchUniversal(_launchUrls[2]);
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          height: height / 8,
                          width: width / 8,
                          child: Image(
                            image: AssetImage("images/Instagram.png"),
                          ),
                        ),
                        onTap: (){
                          _launchUniversal(_launchUrls[0]);
                        },
                      ),

                    ],

                  )
                ],
              ),
            ),
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
