import 'package:flutter/material.dart';
import 'package:flutter_application_1/question.dart';
import 'package:flutter_application_1/question_screen.dart';
import 'package:flutter_application_1/start_screen.dart';
import 'package:flutter_application_1/answer_screen.dart';
class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});
  @override
  State<QuizScreen> createState() {
  return _QuizScreen();
  }
}
class _QuizScreen extends State<QuizScreen>{
  List<String> selectedAnswers = [];
  chooseAnswer (String answer){    
    selectedAnswers.add(answer);
    if(selectedAnswers.length==questions.length)
    {
      setState(() {
        activrescreen = 'result-scree';
        //selectedAnswers.clear();
      });
    }
  }
var activrescreen = 'start-screen';
void switchscreen() 
{ setState(() {  activrescreen = 'question-screen';});}
  @override
  Widget build(BuildContext context) {

    Widget screenwidget = StartScreen(switchscreen);
   if(activrescreen=='result-scree'){
     screenwidget = AnswerScreen(answerstodisplay: selectedAnswers); 
    }
  if (activrescreen == 'question-screen')
  { screenwidget= QuestionScreen(choosedAnswer : chooseAnswer);}
    return MaterialApp(home :Scaffold(body: 
  Container(decoration:
   const BoxDecoration(gradient: 
    LinearGradient(colors: [Colors.green,Colors.purple],begin: 
    Alignment.topLeft,end: Alignment.bottomRight)),
  child: screenwidget),),);
  }
}