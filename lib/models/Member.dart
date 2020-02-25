import 'package:flutter/material.dart';

class Member extends StatelessWidget {
  final String name;
  final String role;
  Member({this.name,this.role});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.red),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.red,
            child: Icon(Icons.person,color: Colors.black),
          ),
          title: Text("$name"),
          subtitle: Text("$role"),
        ),
      ),
    );
  }
}
