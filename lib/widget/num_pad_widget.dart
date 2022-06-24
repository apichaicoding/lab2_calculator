import 'package:flutter/material.dart';

class NumPadWidget extends StatefulWidget {
  const NumPadWidget(
      {super.key,
      required this.buildNumberButton,
      required this.clearAnswer,
      required this.clearAll,
      required this.removeAnswerLast,
      required this.addOperatorToAnswer,
      required this.addNumberToAnswer,
      required this.toggleNegative,
      required this.addDotToAnswer,
      required this.calculate});
  final Function buildNumberButton;
  final Function clearAnswer;
  final Function clearAll;
  final Function removeAnswerLast;
  final Function addOperatorToAnswer;
  final Function addNumberToAnswer;
  final Function toggleNegative;
  final Function addDotToAnswer;
  final Function calculate;

  @override
  State<NumPadWidget> createState() => _NumPadWidgetState();
}

class _NumPadWidgetState extends State<NumPadWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.6,
        color: Colors.black,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(children: <Widget>[
              widget.buildNumberButton("CE", numberButton: false, onTap: () {
                widget.clearAnswer();
              }),
              widget.buildNumberButton("C", numberButton: false, onTap: () {
                widget.clearAll();
              }),
              widget.buildNumberButton("⌫", numberButton: false, onTap: () {
                widget.removeAnswerLast();
              }),
              widget.buildNumberButton("÷", numberButton: false, onTap: () {
                widget.addOperatorToAnswer("÷");
              }),
            ]),
            Row(children: <Widget>[
              widget.buildNumberButton("7", onTap: () {
                widget.addNumberToAnswer(7);
              }),
              widget.buildNumberButton("8", onTap: () {
                widget.addNumberToAnswer(8);
              }),
              widget.buildNumberButton("9", onTap: () {
                widget.addNumberToAnswer(9);
              }),
              widget.buildNumberButton("×", numberButton: false, onTap: () {
                widget.addOperatorToAnswer("×");
              }),
            ]),
            Row(children: <Widget>[
              widget.buildNumberButton("4", onTap: () {
                widget.addNumberToAnswer(4);
              }),
              widget.buildNumberButton("5", onTap: () {
                widget.addNumberToAnswer(5);
              }),
              widget.buildNumberButton("6", onTap: () {
                widget.addNumberToAnswer(6);
              }),
              widget.buildNumberButton("−", numberButton: false, onTap: () {
                widget.addOperatorToAnswer("-");
              }),
            ]),
            Row(children: <Widget>[
              widget.buildNumberButton("1", onTap: () {
                widget.addNumberToAnswer(1);
              }),
              widget.buildNumberButton("2", onTap: () {
                widget.addNumberToAnswer(2);
              }),
              widget.buildNumberButton("3", onTap: () {
                widget.addNumberToAnswer(3);
              }),
              widget.buildNumberButton("+", numberButton: false, onTap: () {
                widget.addOperatorToAnswer("+");
              }),
            ]),
            Row(children: <Widget>[
              widget.buildNumberButton("±", numberButton: false, onTap: () {
                widget.toggleNegative();
              }),
              widget.buildNumberButton("0", onTap: () {
                widget.addNumberToAnswer(0);
              }),
              widget.buildNumberButton(".", numberButton: false, onTap: () {
                widget.addDotToAnswer();
              }),
              widget.buildNumberButton("=", numberButton: false, onTap: () {
                widget.calculate();
              }),
            ]),
          ],
        ));
  }
}
