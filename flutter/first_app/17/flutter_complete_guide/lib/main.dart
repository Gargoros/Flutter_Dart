import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "Whaat's your favorite color?",
      "What's your favorite animal?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app!'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 1'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Color.fromARGB(255, 208, 231, 237),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Answer 2'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Color.fromARGB(255, 208, 231, 237),
              ),
            ),
            ElevatedButton(
              onPressed: () => print('Answer 3!'),
              child: Text('Answer 3'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Color.fromARGB(255, 208, 231, 237),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Answer 4!');
              },
              child: Text('Answer 1'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Color.fromARGB(255, 208, 231, 237),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
