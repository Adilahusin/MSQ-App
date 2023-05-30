import 'package:flutter/material.dart';
import 'pages/quiz.dart';
import './pages/quiz/result.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }  
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Q1. Who created Flutter?',
      'answers': [
        {'text': 'Facebook', 'score': -2},
        {'text': 'Adobe', 'score': -2},
        {'text': 'Google', 'score': 10},
        {'text': 'Microsoft', 'score': -2},
      ],
    },
    {
      'questionText': 'Q2. What is Flutter?',
      'answers': [
        {'text': 'Android Development Kit', 'score': -2},
        {'text': 'IOS Development Kit', 'score': -2},
        {'text': 'Web Development Kit', 'score': -2},
        {
          'text':
              'SDK to build beautiful IOS, Android, Web & Desktop Native Apps',
          'score': 10
        },
      ],
    },
    {
      'questionText': ' Q3. Which programming language is used by Flutter',
      'answers': [
        {'text': 'Ruby', 'score': -2},
        {'text': 'Dart', 'score': 10},
        {'text': 'C++', 'score': -2},
        {'text': 'Kotlin', 'score': -2},
      ],
    },
    {
      'questionText': 'Q4. Who created Dart programming language?',
      'answers': [
        {'text': 'Lars Bak and Kasper Lund', 'score': 10},
        {'text': 'Brendan Eich', 'score': -2},
        {'text': 'Bjarne Stroustrup', 'score': -2},
        {'text': 'Jeremy Ashkenas', 'score': -2},
      ],
    },
    {
      'questionText':
          'Q5. Is Flutter for Web and Desktop available in stable version?',
      'answers': [
        {
          'text': 'Yes',
          'score': -2,
        },
        {'text': 'No', 'score': 10},
      ],
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
      _questionIndex = _questionIndex + 1;
    });
    // ignore: avoid_print
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      // ignore: avoid_print
      print('We have more questions!');
    } else {
      // ignore: avoid_print
      print('No more questions!');
    }
  }
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[700],
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ), //Scaffold
    ); //MaterialApp
  }
}

// class Question{

//   final String questionText;
//   final List<Answer> answersList;

//   Question(this.questionText, this.answersList);
// }

// class Answer {
//   final String answerText;
//   final bool isCorrect;

//   Answer(this.answerText, this.isCorrect);
// }

// List<Question> getQuestion(){
//   List<Question> list = [];

//   // Add questions and answers here

//   list.add(Question(
//     "10 + 10?",
//     [
//       Answer("20", true),
//       Answer("40", false),
//       Answer("60", false),
//       Answer("70", false),
//     ],
//   ));

//     list.add(Question(
//     "50 + 10?",
//     [
//       Answer("50", false),
//       Answer("10", false),
//       Answer("60", true),
//       Answer("90", false),
//     ],
//   ));

//     list.add(Question(
//     "100-50?",
//     [
//       Answer("10", false),
//       Answer("20", false),
//       Answer("30", false),
//       Answer("50", true),
//     ],
//   ));

//     list.add(Question(
//     "100 + 100?",
//     [
//       Answer("200", true),
//       Answer("40", false),
//       Answer("60", false),
//       Answer("70", false),
//     ],
//   ));

//   return list;
// }