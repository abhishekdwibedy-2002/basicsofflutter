import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activediceimg = 'assets/images/dice-2.png';

  void pressed() {
    setState(() {
      var img = Random().nextInt(5) + 1;
      activediceimg = 'assets/images/dice-$img.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activediceimg,
          width: 150,
        ),
        const SizedBox(height: 20),
        //ElevatedButton(onPressed: pressed,  child:  const Text('Roll Dice'))
        //OutlinedButton(onPressed: pressed, child: const Text('Roll Dice'))
        TextButton(
            onPressed: pressed,
            style: TextButton.styleFrom(
                //padding: const EdgeInsets.only(top: 20),
                textStyle: const TextStyle(fontSize: 28),
                foregroundColor: Colors.white),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
