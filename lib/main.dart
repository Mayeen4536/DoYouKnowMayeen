import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'Which is Mayeen\'s favourite Team?',
      'answers': [
        {'text': 'Arsenal', 'score': 20},
        {'text': 'Chelsea', 'score': 0},
        {'text': 'Real Madrid', 'score': 5},
        {'text': 'Barcelona', 'score': 5},
      ]
    },
    {
      'questionText': 'Who is Mayeen\'s preferred bowler among these?',
      'answers': [
        {'text': 'Muralitharan', 'score': 3},
        {'text': 'Trent Boult', 'score': 10},
        {'text': 'Mcgrath', 'score': 20},
        {'text': 'Starc', 'score': 11},
      ]
    },
    {
      'questionText': 'Who is Mayeen\'s preferred tennis player among these?',
      'answers': [
        {'text': 'Federer', 'score': 10},
        {'text': 'Sharapova', 'score': 13},
        {'text': 'Djokovic', 'score': 4},
        {'text': 'Serena', 'score': 10},
      ]
    },
    {
      'questionText': 'Which is Mayeen\'s dream profession?',
      'answers': [
        {'text': 'Soccer Player', 'score': 10},
        {'text': 'Cricketer', 'score': 25},
        {'text': 'Engineer', 'score': 5},
        {'text': 'Doctor', 'score': 0},
      ]
    },
     {
      'questionText': 'Which one is Mayeen\'s preffered movie?',
      'answers': [
        {'text': 'Harry Potter', 'score': 23},
        {'text': 'Forrest Gump', 'score': 10},
        {'text': 'Swades', 'score': 17},
        {'text': 'Tamasha', 'score': 20},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('How good do you know Mayeen?'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
