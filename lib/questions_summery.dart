import 'package:flutter/material.dart';
class QuestionsSummery extends StatelessWidget{
  QuestionsSummery({required this.summeryofdata,super.key});
  List<Map<String,Object>> summeryofdata;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 300,
      child: SingleChildScrollView(
        child: Column(children: summeryofdata.map((data){
          return Row(children: [
            Text(((data['Question Index'] as int)+1).toString(),),
            Expanded(
              child: Column(children: [
                Text(data['Question'] as String),
                Text(data['Answers'] as String),
                Text(data['User Selected Answer'] as String)
              ],),
            )
        
            ],);} ,).toList(),),
      ),
    );
  }
}