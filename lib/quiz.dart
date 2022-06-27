import "package:flutter/material.dart";

import "./question.dart";
import "./answer.dart";

class Quiz extends StatelessWidget {
  final questions;
  final int i;
  final Function answerQuestion;

  Quiz(this.answerQuestion, this.questions, this.i);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[i]["questionText"] as String),
        ...(questions[i]["answers"] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer["score"]), answer["text"]);
        }).toList()
      ],
    );
  }
}
