import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget(
      {super.key, required this.answer, required this.inputFull});
  final String answer;
  final String inputFull;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: EdgeInsets.all(16),
          color: Colors.white,
          child: Align(
              alignment: Alignment.bottomRight,
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Text(inputFull, style: TextStyle(fontSize: 18)),
                Text(answer,
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold))
              ]))),
    );
  }
}
