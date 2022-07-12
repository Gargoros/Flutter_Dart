import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
              onPressed: null,
              child: Text('Answer 1'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.green,
              ),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 2'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.green,
              ),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 3'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
