import 'package:flutter/material.dart';
class AnswerButoon extends StatelessWidget{
   AnswerButoon({super.key,required this.answertext,required this.ontap});
  String answertext;
  void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:ontap,style: 
    ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40)
    ,backgroundColor: Colors.deepPurple,foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),),), child: Text(answertext),);
  }
}