import 'package:first/quiz.dart';
import 'package:flutter/material.dart';
import './result.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return myAppstate();
  }
}

class myAppstate extends State<myApp> {
  var questionindex = 0;
  var totalscore = 0;
  void _answerQuestion(int score) {
    if (score == 0) {
      totalscore = 0;
    }
    totalscore += score;
    setState(() {
      if (questionindex > 1) {
        questionindex = 0;
      } else
        questionindex++;
    });
  }

  Widget build(BuildContext context) {
    var question = [
      {
        'questions': 'what is ur name ?',
        'answer': [
          {'text': 'Nikhil', 'score': 1},
          {'text': 'Abhinav', 'score': 2},
          {'text': 'Ayush', 'score': 3},
          {'text': 'dheeru', 'score': 4},
          {'text': 'Utkarsh','score': 5},
        ],
      },
      {
        'questions': 'what is ur surname ?',
        'answer': [
          {'text': 'singh', 'score': 1},
          {'text': 'saini', 'score': 2},
          {'text': 'kumar', 'score': 3},
          {'text': 'thakur', 'score': 4}
        ],
      },
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My first App'),
            ),
            body: questionindex < question.length
                ? quiz(
                    answerQuestion: _answerQuestion,
                    question: question,
                    questionindex: questionindex,
                  )
                : result(_answerQuestion, totalscore)));
  }
}
