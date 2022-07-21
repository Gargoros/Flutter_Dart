import 'package:flutter/material.dart';
import './text_control.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
