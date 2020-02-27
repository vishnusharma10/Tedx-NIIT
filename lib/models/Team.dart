import "package:flutter/material.dart";
import 'package:tedx_niit/models/Member.dart';

class Team extends StatefulWidget {
  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      height: MediaQuery.of(context).size.height/3,
      child: ListWheelScrollView(
        itemExtent: 80,
        children: [
          Member(name: "Keerthana Reddy",role: "Organizer",),
          Member(name: "Astha Kumar",role: "Lead Curator",),
          Member(name: "Aditya Joshi",role: "Creative Lead",),
          Member(name: "Abhilash Bhowmik",role: "Lead Designer",),
          Member(name: "Arjun Bakshi",role: "Operations Lead",),
          Member(name: "Yuvraj Singh",role: "Lead Cinematographer",),
          Member(name: "Somanshu Singh",role: "Lead Web Developer",),
        ],
      ),
    );
  }
}
