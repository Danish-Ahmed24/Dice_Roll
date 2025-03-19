import 'package:flutter/material.dart';
import 'dart:math';

var randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

var currentDiceRoll = randomizer.nextInt(6) + 1;

class _DiceRollerState extends State<DiceRoller> {
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 250,
        ),
        // TextButton(
        //   onPressed: rollDice,
        //   style: TextButton.styleFrom(
        //     padding: EdgeInsets.only(top: 150),
        //     textStyle: TextStyle(fontSize: 40),
        //   ),
        SizedBox(height: 275),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(
              255,
              242,
              255,
              0,
            ),
          ),
          child: Text(
            "Roll",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
