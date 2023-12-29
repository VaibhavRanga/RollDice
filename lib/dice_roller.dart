import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceImage = 'assets/images/dice-${Random().nextInt(6) + 1}.png';
  rollDice() {
    setState(() {
      currentDiceImage = 'assets/images/dice-${Random().nextInt(6) + 1}.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          currentDiceImage,
          width: 200,
        ),
        const SizedBox(height: 20),
        FilledButton.tonal(
          onPressed: rollDice,
          style: FilledButton.styleFrom(backgroundColor: Colors.orangeAccent),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
