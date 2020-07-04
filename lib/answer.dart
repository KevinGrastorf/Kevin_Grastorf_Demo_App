import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    Color b = const Color(0xFF0022FF);
    Color r = const Color(0xFFFF0000);
    Color o = const Color(0xFFFF4500);
    Color g = const Color(0xFF228B22);
    Color w = const Color(0xFFFFFFFF);
    var buttonColors = [b,r,o,g];
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        onPressed: selectHandler,
        color: buttonColors[3],
        textColor: w,
      ),
    );
  }
}
