import 'package:flutter/material.dart';
import 'package:untitled15/Components/components.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text("Login Screen")),
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              defaultTextFormField(
                isPassword: true,
                suffix: Icon(Icons.visibility),
                controller: emailController,
                label: "email",
                prefixIcon: Icon(Icons.email),
                function: (value) {
                  if (value.isEmpty) {
                    return "email must be required";
                  }
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: passController,
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "password must not be empty";
                  }
                },
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility),
                  prefixIcon: Icon(Icons.email),
                  labelText: "pas",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),

              defaultButton(
                text: "Login",
                function: () {
                  if (formKey.currentState!.validate()) {
                    print(emailController.text);
                  }
                },
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  SizedBox(width: 15),
                  buildTextButton(
                    text: "Hello",
                    function: () => print("object"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
