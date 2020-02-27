import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:tedx_niit/constants/strings.dart';
import 'package:tedx_niit/models/DescriptionAlert.dart';

class Speakers extends StatefulWidget {
  @override
  _SpeakersState createState() => _SpeakersState();
}

class _SpeakersState extends State<Speakers> {

  Descriptions descriptions = new Descriptions();
  void showAlertDialogOnOkCallback(String string) {
    AwesomeDialog(
      context: context,
      padding: EdgeInsets.all(10),
      animType: AnimType.SCALE,
      dialogType: DialogType.INFO,
      customHeader: Container(
        child: Icon(Icons.mic,size: 60,color: Colors.black,),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.black,
          child: Text('$string',
            style: TextStyle(fontStyle: FontStyle.italic,color: Colors.white,fontWeight: FontWeight.bold),
          ),
        ),
      ),
      tittle: 'This is Ignored',
      desc: 'This is also Ignored',
    ).show();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView.count(
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: <Widget>[
            GestureDetector(
              child: Image(
                image: AssetImage("images/sugata_mitra.png",),

              ),
              onTap: (){
                showAlertDialogOnOkCallback(descriptions.descriptions['Sugata_Mitra']);
              },
            ),
            GestureDetector(
              child: Image(
                image: AssetImage("images/aditya_bhandari.png",),

              ),
              onTap: (){
                showAlertDialogOnOkCallback(descriptions.descriptions['Aditya_Bhandari']);
              },
            ),
            GestureDetector(
              child: Image(
                image: AssetImage("images/Dhruv_Shah.png",),

              ),
              onTap: (){
                showAlertDialogOnOkCallback(descriptions.descriptions['Dhruv_Shah']);
              },
            ),
            GestureDetector(
              child: Image(
                image: AssetImage("images/dig_Shalin.png",),

              ),
              onTap: (){
                showAlertDialogOnOkCallback(descriptions.descriptions['Dig_Shalin']);
              },
            ),
            GestureDetector(
              child: Image(
                image: AssetImage("images/manoj_final.png",),

              ),
              onTap: (){
                showAlertDialogOnOkCallback(descriptions.descriptions['Manoj_Keshwar']);
              },
            ),
            GestureDetector(
              child: Image(
                image: AssetImage("images/sushruti_krishna.png",),

              ),
              onTap: (){
                showAlertDialogOnOkCallback(descriptions.descriptions['Sushruti_Krishna']);
              },
            ),
            GestureDetector(
              child: Image(
                image: AssetImage("images/tirthak_saha.png",),

              ),
              onTap: (){
                showAlertDialogOnOkCallback(descriptions.descriptions['Tirthak_Saha']);
              },
            ),
            GestureDetector(
              child: Image(
                image: AssetImage("images/vijay_rao.png",),

              ),
              onTap: (){
                showAlertDialogOnOkCallback(descriptions.descriptions['Vijay_Rao']);
              },
            ),
            GestureDetector(
              child: Image(
                image: AssetImage("images/Zoe_Modgill.png",),

              ),
              onTap: (){
                showAlertDialogOnOkCallback(descriptions.descriptions['Zoe_Modgill']);
              },
            ),

          ], crossAxisCount: 1,
        ),
      ),
    );
  }
}
