import "package:flutter/material.dart";
import 'package:flutter_complete_guide/result.dart';

import "./quiz.dart";
import "./result.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _i = 0;
  var _totalScore = 0;
  static const _questions = [
    {
      "questionText": "What's your favorite position?",
      "answers": [
        {"text": "Doggy", "score": 8},
        {"text": "Missionary", "score": 10},
        {"text": "Cowgirl", "score": 10},
        {"text": "69", "score": 69}
      ]
    },
    {
      "questionText": "Who do you love?",
      "answers": [
        {"text": "Is it me or him?", "score": 10},
        {"text": "Cause I can't take the pressure anymore", "score": 3},
        {"text": "Girl it's killing me", "score": 6},
        {"text": "If you can't say that I'm the one for sure", "score": 7}
      ]
    },
    {
      "questionText": "Why were you late?",
      "answers": [
        {"text": "Why was I late?", "score": 5},
        {"text": "Why am I here?", "score": 0},
        {"text": "Why was I born?", "score": 100}
      ]
    }
  ];
  void _answerQuestion(int points) {
    setState(() {
      if (_i < _questions.length) {
        _i += 1;
        _totalScore += points;
      }
    });
  }

  void _restartQuiz() {
    setState(() {
      _i = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _i < _questions.length
            ? Quiz(_answerQuestion, _questions, _i)
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}
