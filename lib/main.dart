import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

//void main() {
//  runApp(MyApp());
//}
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore += score;

    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Blue', 'score': 10},
          {'text': 'Red', 'score': 7},
          {'text': 'Orange', 'score': 5},
          {'text': 'Green', 'score': 3}
        ]
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Dog', 'score': 10},
          {'text': 'Cat', 'score': 10},
          {'text': 'Parakeet', 'score': 3},
          {'text': 'Lion', 'score': 12},
          {'text': 'Muskrat', 'score': 1}
        ]
      },
      {
        'questionText': 'What\'s your favorite ice cream?',
        'answers': [
          {'text': 'Vanilla', 'score': 1},
          {'text': 'Chocolate', 'score': 3},
          {'text': 'Strawberry', 'score': 5},
          {'text': 'Cherry Garcia', 'score': 10},
          {'text': 'Chunky Monkey', 'score': 9},
          {'text': 'Coffee Heathbar Crunch', 'score': 7}
        ]
      },
    ];

    Color p = const Color(0xFF330033);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          //backgroundColor: p,
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questions: questions,
                questionIndex: questionIndex)
            : Result(totalScore, resetQuiz),
        backgroundColor: p,
      ),
    );
  }
}
