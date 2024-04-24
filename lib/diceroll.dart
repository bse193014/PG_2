import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoll extends StatefulWidget {
  DiceRoll({super.key});
  @override
  State<DiceRoll> createState() {
  return _DiceRollState();
  }
}
class _DiceRollState extends State<DiceRoll>{
  int dicevalue = 1;
  void rollDice(){
    setState(() {
      dicevalue = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(child: 
      Center(child: 
      Column(  
        mainAxisAlignment: MainAxisAlignment.center,
         children: [Image.asset('asset/dicepics/$dicevalue.png',scale: 9,),
      ElevatedButton(onPressed: rollDice, child: Text("Roll Dice",style: TextStyle(color: Colors.black,fontSize: 30),))],)),
         
         decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.green]
          )
        ),),
    );
  }
}