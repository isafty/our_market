import 'package:flutter/material.dart';
import 'package:new_app_1/core/widget/textformfield1.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Welcome to Login Page", style: TextStyle(fontSize: 24)),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(16),
            child: Icon(Icons.person, size: 100),
          ),
          // Replace with your image URL
          TFF1(
            ltext: 'Email',
            prefixIcon: Icon(Icons.email),
            textInputType: TextInputType.emailAddress,
          ),
          SizedBox(height: 20),
          TFF1(
            ltext: 'Password',
            prefixIcon: Icon(Icons.lock),
            suffixIcon: Icon(Icons.visibility),
            textInputType: TextInputType.visiblePassword,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed: () {}, child: Text("Forgot Password?")),
              TextButton(onPressed: () {}, child: Text("Sign Up")),
            ],
          ),

          ElevatedButton(onPressed: () {}, child: Text("Login")),
        ],
      ),
    );
  }
}
