import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartQuiz;

  Result(this.resultScore, this.restartQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 20) {
      resultText = "Suck: score is ${resultScore}";
    } else if (resultScore <= 50) {
      resultText = "Less suck: score is ${resultScore}";
    } else if (resultScore <= 150) {
      resultText = "Okay: score is ${resultScore}";
    } else {
      resultText = "Wow: score is ${resultScore}";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: restartQuiz,
              child: Text("Restart Quiz"),
            )
          ],
        ),
      ),
    );
  }
}
