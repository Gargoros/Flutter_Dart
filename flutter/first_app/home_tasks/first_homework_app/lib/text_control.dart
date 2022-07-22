import 'package:flutter/material.dart';
import './text_output.dart';

class TextControl extends StatefulWidget {
  const TextControl({Key? key}) : super(key: key);

  @override
  State<TextControl> createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  final List<String> _mainText = ['Some Text', 'Some another Text'];
  final _buttonText = 'Press on me';
  int _countIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextOutput(_mainText, _countIndex),
        ElevatedButton(
          onPressed: () {
            setState(() {
              (_countIndex < 1) ? _countIndex += 1 : _countIndex -= 1;
            });
          },
          child: Text(_buttonText),
          style: ElevatedButton.styleFrom(
              primary: Colors.cyan,
              textStyle: TextStyle(fontSize: 20),
              onPrimary: Colors.black),
        )
      ],
    ));
  }
}
