import 'package:flutter/material.dart';
import 'package:new_app_1/core/widget/textformfield1.dart';

class ForgetView extends StatelessWidget {
  const ForgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forget Password')),
      body: Column(
        children: [
          SizedBox(height: 20),
          TFF1(
            ltext: 'Email',
            prefixIcon: Icon(Icons.email),
            textInputType: TextInputType.emailAddress,
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: Text("Send")),
        ],
      ),
    );
  }
}
