import 'package:flutter/material.dart';
import './chooseColor.dart';
import 'buttonWidget.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestionFuntion;
  Quiz(
      {@required this.questions,
      @required this.answerQuestionFuntion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChooseColor(questions[questionIndex]['catName']),
        //Here (...) can spacify the nested loop
        ...(questions[questionIndex]['options'] as List<Map<String, Object>>)
            .map((buttonWidget) {
          return ButtonRendering(
              () => answerQuestionFuntion(buttonWidget['score']),
              buttonWidget['text']);
        }).toList()
      ],
    );
  }
}
