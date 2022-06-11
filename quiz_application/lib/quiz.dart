import 'package:flutter/material.dart';
import 'package:quiz_application/question.dart';
import 'package:quiz_application/answer.dart';
class Quiz extends StatelessWidget {

  final List<Map<String,Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  Quiz({required this.questions,required this.answerQuestion,required this.questionIndex});



  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]['questionText'].toString()),
      ...(questions[questionIndex]['answers'] as List <Map<String,Object>>).map((answer){
        return Answer(()=>answerQuestion(answer['score']),answer['text'].toString());

      }).toList()
    ],);
  }
}
