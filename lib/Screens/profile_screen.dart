import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  String name;
  String phone;
  ProfileScreen({required this.name, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/person.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "$name",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'PlaywriteHU',
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Software Engineer",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15),
            margin: EdgeInsets.all(25),
            height: 70,
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                "$phone",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15),
            margin: EdgeInsets.all(25),
            height: 70,
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.map),
              title: Text(
                "Sohag",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
