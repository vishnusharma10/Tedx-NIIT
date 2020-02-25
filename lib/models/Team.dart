import "package:flutter/material.dart";

class Team extends StatefulWidget {
  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/2,
      child: ListWheelScrollView(
        useMagnifier: true,
        magnification: 1.5,
        itemExtent: 80,
        children: [
          Container(
            width: double.infinity,
            color: Colors.red,
            child:Text("Hello"),
            height: MediaQuery.of(context).size.height / 8,
          ),
          Container(
            width: double.infinity,
            color: Colors.red,
            child:Text("Hello"),
            height: MediaQuery.of(context).size.height / 8,
          ),
          Container(
            width: double.infinity,
            color: Colors.red,
            child:Text("Hello"),
            height: MediaQuery.of(context).size.height / 8,
          ),
          Container(
            width: double.infinity,
            color: Colors.red,
            child:Text("Hello"),
            height: MediaQuery.of(context).size.height / 8,
          ),
        ],
      ),
    );
  }
}
