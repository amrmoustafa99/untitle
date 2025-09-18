import 'package:flutter/material.dart';

import 'a-UserItem.dart';

class TopTenScreen extends StatelessWidget {
  const TopTenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/top-10.png"),
        ),
        title: Text(
          "Top Ten",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: ListView(children: [UserItemc()]),
    );
  }
}
