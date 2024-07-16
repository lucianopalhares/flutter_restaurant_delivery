import 'package:flutter/material.dart';
import 'package:testando_food/components/my_theme.dart';

class MyTextfield extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String hintText;

  const MyTextfield({super.key, required this.controller, required this.obscureText, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: myTheme.colorScheme.tertiary
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: myTheme.colorScheme.primary
            )
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: myTheme.colorScheme.primary
          )
        ),
      ),
    );
  }
}