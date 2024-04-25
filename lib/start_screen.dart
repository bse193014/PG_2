import 'package:flutter/material.dart';
class StartScreen extends StatelessWidget{
 const StartScreen(this.startquiz,{super.key});
 final void Function() startquiz;
@override
  Widget build(BuildContext context) {
    return Center(child :
     Column(mainAxisSize: 
     MainAxisSize.min,children: [Opacity(opacity: 0.5,child: Image.asset('asset/dicepics/1.png',width: 300,)),
    OutlinedButton.icon( onPressed: startquiz,
     label: const Text('Start Quiz'),
     style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
     icon: const Icon(Icons.arrow_right_alt_sharp) ,)
    ],));
  }
}