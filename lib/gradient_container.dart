// ignore: file_names
import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const Alignment alignmentTopRight = Alignment.topRight;
const Alignment alignmentBottomLeft = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.firstColor,
    this.secondColor, {
    super.key,
  });

  final Color firstColor;
  final Color secondColor;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [firstColor, secondColor],
          begin: alignmentTopRight,
          end: alignmentBottomLeft,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
