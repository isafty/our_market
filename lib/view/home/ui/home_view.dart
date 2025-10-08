import 'package:flutter/material.dart';
import 'package:new_app_1/core/widget/textformfield1.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(height: 20),
        TFF1(
          ltext: 'Search',
          prefixIcon: Icon(Icons.search),
          textInputType: TextInputType.text,
          suffixIcon: IconButton(onPressed: null, icon: Icon(Icons.send)),
        ),
        SizedBox(height: 20),
        Center(child: Icon(Icons.storefront, size: 200, color: Colors.grey)),
      ],
    );
  }
}
