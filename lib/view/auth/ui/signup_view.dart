import 'package:flutter/material.dart';
import 'package:new_app_1/core/widget/textformfield1.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome to Sign Up')),
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(16),
            child: Icon(Icons.person, size: 100),
          ),
          TFF1(
            ltext: 'Name',
            prefixIcon: Icon(Icons.person),
            textInputType: TextInputType.name,
          ),
          SizedBox(height: 20),

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
          ElevatedButton(onPressed: () {}, child: Text("Sign Up")),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
