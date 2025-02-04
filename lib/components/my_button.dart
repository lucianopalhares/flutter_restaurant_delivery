import 'package:flutter/material.dart';
import 'package:testando_food/components/my_theme.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Function()? onTap;

  const MyButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: myTheme.colorScheme.secondary,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Center(
          child: Text(
            text, 
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              color: myTheme.colorScheme.inversePrimary, 
              fontSize: 16
            ),
          ),
        ),
      ),
    );
  }
}