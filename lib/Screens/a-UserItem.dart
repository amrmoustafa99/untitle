import 'package:flutter/material.dart';

class UserItemc extends StatelessWidget {
  const UserItemc({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 30,
            child: Text(
              "1",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Alaa Elnagih", style: TextStyle(fontSize: 20)),
            Text(
              "01111111111",
              style: TextStyle(fontSize: 15, color: Colors.green),
            ),
          ],
        ),
      ],
    );
  }
}
