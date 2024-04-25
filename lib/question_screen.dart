import 'package:flutter/material.dart';
import 'package:flutter_application_1/answer_button.dart';
import 'package:flutter_application_1/question.dart';
class QuestionScreen extends StatefulWidget {
   const QuestionScreen({super.key,required this.choosedAnswer});
   final void Function(String answer) choosedAnswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}
class _QuestionScreen extends State <QuestionScreen>{
  var currentQuestionIndex = 0;
  
  answerQuestion(String answeris){
    widget.choosedAnswer(answeris);
    setState(() {
      currentQuestionIndex++;
    }); 
  }
  @override
  Widget build(BuildContext context) {
    var currentquestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(margin: EdgeInsets.all(40),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [ Text(currentquestion.text,style:const 
          TextStyle(color: Colors.white,fontSize: 10),textAlign:TextAlign.center,),
          SizedBox(height: 20,),
          ...currentquestion.getShuffledList().map((text) {return 
          AnswerButoon(answertext: text,
           ontap: (){answerQuestion(text);});},),
          ],),
      ),
    );
  }
}