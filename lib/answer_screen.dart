import 'package:flutter/material.dart';
import 'package:flutter_application_1/question.dart';
import 'package:flutter_application_1/questions_summery.dart';
class AnswerScreen extends StatelessWidget{
   AnswerScreen({super.key,required this.answerstodisplay});
   List<String> answerstodisplay;
List<Map<String,Object>> getsummeryanswer(){
     List<Map<String,Object>>  summery = []; 
        for (var i = 0; i < answerstodisplay.length; i++) {
          summery.add({
            'Question Index': i ,
            'Question':questions[i].text,
            'Answers': questions[i].answers[0],
            'User Selected Answer': answerstodisplay[i],
          });
        }
return summery;
}
  @override
  Widget build(BuildContext context) {
    final summerydata = getsummeryanswer();
    var totalanswer = questions.length;
   var corectanswer = summerydata.where((data){return data['Answers']==data['User Selected Answer'];}).length;
    return Center(child :
     Column(mainAxisSize: 
     MainAxisSize.min,children: [
      Text('you have given correct answer $corectanswer out of $corectanswer questions',style: const 
      TextStyle(fontSize: 40),),
      QuestionsSummery(summeryofdata: summerydata),
      ElevatedButton(onPressed:(){},style: 
    ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40)
    ,backgroundColor: Colors.deepPurple,foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),),), 
    child: Text("Restart quiz"),)
    ],));
  }
}