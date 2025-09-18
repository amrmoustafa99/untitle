import 'package:flutter/material.dart';
import 'package:untitled15/Models/user_model.dart';

class UserItem extends StatelessWidget {
  UserModel userModel;
  UserItem({required this.userModel});
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
              userModel.number,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(userModel.name, style: TextStyle(fontSize: 20)),
            Text(
              userModel.phone,
              style: TextStyle(fontSize: 15, color: Colors.green),
            ),
          ],
        ),
      ],
    );
  }
}
