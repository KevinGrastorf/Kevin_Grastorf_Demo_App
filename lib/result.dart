import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText = 'You did it!';
    if (resultScore <= 15) {
      resultText = 'Keep trying. \nYou\'ll get there!';
    } else if (resultScore <= 20) {
      resultText = 'Not bad. Not bad, at all.';
    } else if (resultScore <= 25) {
      resultText = 'Getting warmer';
    } else {
      resultText = 'You got it! \nYou\'re amazing!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(50),
            child: Text(
              resultPhrase,
              style: TextStyle(fontSize: 28, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
                side: BorderSide(color: Colors.red),
                ),
            color: Colors.amber,
            highlightColor: Colors.blue,
            padding: EdgeInsets.all(30),
            materialTapTargetSize: MaterialTapTargetSize.padded,
            textColor: Colors.black,
            onPressed: resetHandler,
            child: Text(
              'Restart Quiz!',
              
            ),
          ),
        ],
      ),
    );
  }
}
