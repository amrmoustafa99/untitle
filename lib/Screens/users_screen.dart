import 'package:flutter/material.dart';
import 'package:untitled15/Components/user_item.dart';
import 'package:untitled15/Models/user_model.dart';
import 'package:untitled15/Screens/profile_screen.dart';

class UsersScreen extends StatelessWidget {
  UsersScreen({super.key});
  List<UserModel> users = [
    UserModel(number: "1", name: "Youmna Khaled", phone: "0123569874"),
    UserModel(number: "2", name: "Mariam khaled", phone: "01122886645"),
    UserModel(number: "3", name: "Zeniab abdelrahman", phone: "01036542048"),
    UserModel(number: "4", name: "Mariam yahya", phone: "0128862034"),
    UserModel(number: "5", name: "Alaa Elnagih", phone: "0102558899"),
    UserModel(number: "6", name: "Rehab Mohamed", phone: "0128668749"),
    UserModel(number: "7", name: "Marez Hares", phone: "01166552048"),
    UserModel(number: "8", name: "Katren Karam", phone: "01154309854"),
    UserModel(number: "9", name: "Reham Saad", phone: "01258623047"),
    UserModel(number: "10", name: "Shimaa Abulsabor", phone: "01059623014"),
  ];
  List<Widget> userItemsNewe = [];
  List<Widget> getUserItem(List<UserModel> user) {
    for (int i = 0; i < user.length; i++) {
      userItemsNewe.add(UserItem(userModel: users[i]));
    }
    return userItemsNewe;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/topten.png"),
        ),
        title: Text("Top Ten"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          var currentIndex = users[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen(
                  name: currentIndex.name,
                  phone: currentIndex.phone,
                ),
              ),
            ),
            child: UserItem(userModel: users[index]),
          );
        },
        itemCount: users.length,
        separatorBuilder: (context, index) =>
            Divider(indent: 20, endIndent: 20),
      ),
    );
  }
}
