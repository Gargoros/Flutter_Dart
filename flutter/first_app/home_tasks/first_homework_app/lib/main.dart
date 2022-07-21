import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> _text = ['Some Text', 'Some another Text'];
  final _button_text = 'Press on me';
  int countIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
              title: Text('My home App!'),
              backgroundColor: Colors.cyan,
              foregroundColor: Colors.black),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _text[countIndex],
                style: TextStyle(fontSize: 36),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (countIndex < 1) {
                      countIndex += 1;
                    } else {
                      countIndex -= 1;
                    }
                  });
                },
                child: Text(_button_text),
                style: ElevatedButton.styleFrom(
                    primary: Colors.cyan,
                    textStyle: TextStyle(fontSize: 20),
                    onPrimary: Colors.black),
              )
            ],
          )),
        ));
  }
}
