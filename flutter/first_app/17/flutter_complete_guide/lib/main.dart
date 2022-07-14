import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': "Whaat's your favorite color?",
      'answer': ['Red', 'Blue', 'Green', 'White'],
    },
    {
      'questionText': "What's your favorite animal?",
      'answer': ['Puma', 'Cat', 'Dog', 'Rabbit'],
    },
    {
      'questionText': "Who's your favorite instructor?",
      'answer': ['Sam', 'Jim', 'Bob', 'Radius'],
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }

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
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(questions[_questionIndex]['questionText']),
                  ...(questions[_questionIndex]['answer'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
