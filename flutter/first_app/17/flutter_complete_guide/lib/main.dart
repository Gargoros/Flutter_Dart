import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen!');
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
            Text('The question!'),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 1'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Color.fromARGB(255, 208, 231, 237),
              ),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 2'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Color.fromARGB(255, 208, 231, 237),
              ),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer 3'),
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
