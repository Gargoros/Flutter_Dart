import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  List<String> mainText;
  final count;

  TextOutput(this.mainText, this.count);

  @override
  Widget build(BuildContext context) {
    return Text(
      mainText[count],
      style: TextStyle(fontSize: 36),
    );
  }
}
