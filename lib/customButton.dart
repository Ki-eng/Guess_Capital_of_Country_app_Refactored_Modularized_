import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {required this.onPress,
      required this.title,
      this.backgroundColor = Colors.blueAccent});

  final VoidCallback onPress;
  final title;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      style:
          ButtonStyle(backgroundColor: WidgetStatePropertyAll(backgroundColor)),
    );
  }
}
