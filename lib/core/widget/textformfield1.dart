import 'package:flutter/material.dart';

class TFF1 extends StatelessWidget {
  final String ltext;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType textInputType;
  final bool? obscureText;
  const TFF1({
    super.key,
    required this.ltext,
    this.suffixIcon,
    this.prefixIcon,
    required this.textInputType,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        keyboardType: textInputType,
        obscureText: ltext == 'Password' ? obscureText ?? true : false,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {},
            icon: suffixIcon ?? const SizedBox.shrink(),
          ),
          prefixIcon: prefixIcon,
          labelText: ltext,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
