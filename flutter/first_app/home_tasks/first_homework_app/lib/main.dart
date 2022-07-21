import 'package:flutter/material.dart';
import './text_control.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
            body: TextControl()));
  }
}
