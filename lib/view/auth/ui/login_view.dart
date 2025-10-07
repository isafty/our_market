import 'package:flutter/material.dart';
import 'package:new_app_1/core/function/navigator_to.dart';
import 'package:new_app_1/core/widget/customtextbutton.dart';
import 'package:new_app_1/core/widget/textformfield1.dart';
import 'package:new_app_1/view/auth/ui/forget_view.dart';
import 'package:new_app_1/view/auth/ui/signup_view.dart';

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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomTextButton(
                textb: "Forgot Password?",
                onTap: () {
                  navigatorMethod(context, ForgetView());
                },
              ),
              SizedBox(width: 10),
              CustomTextButton(
                textb: "Sign Up",
                onTap: () {
                  navigatorMethod(context, SignUpView());
                },
              ),
              SizedBox(width: 20),
            ],
          ),
          ElevatedButton(onPressed: () {}, child: Text("Login")),
          SizedBox(height: 20),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.g_mobiledata),
            label: Text("Login with Google"),
          ),
        ],
      ),
    );
  }
}
