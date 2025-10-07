import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String textb;
  final VoidCallback? onTap;
  const CustomTextButton({super.key, required this.textb, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onTap, child: Text(textb));
  }
}
