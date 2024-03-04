import 'dart:math';
import 'package:flutter/material.dart';
final randomizer=Random();

class DiceRoller extends StatefulWidget{
      const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller>{
  var currentroll=2;
  void rooldice()
  {
    setState((){
      currentroll = randomizer.nextInt(6)+1;
    });
  }
  @override
  Widget build(context) {
    return Column(
            mainAxisSize: MainAxisSize.min,
            children:
          [
            Image.asset(
            'assets/dice-images/dice-images/dice-$currentroll.png',
            width: 250,
            ),
            const SizedBox(height: 20,),
            TextButton(
              onPressed:rooldice,
              style:TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 30,),
                foregroundColor: Colors.white,textStyle: const TextStyle(fontSize:28 )) ,
              child: const Text('Roll Dice'),
            ),
          ],
        );
  }
}


