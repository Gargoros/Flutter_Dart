import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "Whaat's your favorite color?",
      'answer': [
        {'text': 'Red', 'score': 1},
        {'text': 'Blue', 'score': 5},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 2}
      ],
    },
    {
      'questionText': "What's your favorite animal?",
      'answer': [
        {'text': 'Puma', 'score': 1},
        {'text': 'Cat', 'score': 12},
        {'text': 'Dog', 'score': 23},
        {'text': 'Rabbit', 'score': 8}
      ],
    },
    {
      'questionText': "Who's your favorite instructor?",
      'answer': [
        {'text': 'Sam', 'score': 2},
        {'text': 'Jim', 'score': 3},
        {'text': 'Bob', 'score': 6},
        {'text': 'Radius', 'score': 8}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app!'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
