import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:tedx_niit/constants/Constants.dart';
import 'package:tedx_niit/screens/History.dart';
import 'package:tedx_niit/screens/Speakers.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  int dropDownValue = 2018;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TedX Niit University",style: style),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 10,
        actions: <Widget>[Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return History();
                    }
                ));
              },
              child: DropdownButton(icon: Icon(Icons.history,color: Colors.black,),items: null, onChanged: (int newValue){setState(() {
                dropDownValue = newValue;
              });})
            )
        )],
       ),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Container(
              color: Colors.black,
            ),
            Speakers(),
            Container(
              color: Colors.black,
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.white,
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(title: Text('Schedule'), icon: Icon(Icons.access_time),activeColor: active_color,inactiveColor: inactive_color),
          BottomNavyBarItem(title: Text('Speakers'), icon: Icon(Icons.headset_mic),activeColor: active_color,inactiveColor: inactive_color),
          BottomNavyBarItem(
              title: Text('About Us'), icon: Icon(Icons.person),activeColor: active_color,inactiveColor: inactive_color),

        ],
      ),
    );
  }
}
