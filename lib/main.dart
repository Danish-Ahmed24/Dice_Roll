import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 84, 8, 55),
          Color.fromARGB(255, 117, 3, 81),
        ),
      ),
    ),
  );
}
