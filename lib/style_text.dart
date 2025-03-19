import 'package:flutter/material.dart';

class TextsStyle extends StatelessWidget {
  const TextsStyle(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.cyanAccent,
        fontSize: 44,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
