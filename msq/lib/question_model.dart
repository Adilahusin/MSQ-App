import 'package:flutter/material.dart';
import 'package:msq/pages/homepage.dart';
import 'pages/quiz.dart';
import './pages/quiz/result.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }  
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  _answerQuestion(int score) {
         WidgetsBinding.instance
        .addPostFrameCallback((_) => setState(() {
          //_questionIndex ++;
          //_totalScore += score;
    }));
    debugPrint('debug: _questionIndex');
  }

    _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
  });
  }
  
  @override
  Widget build(BuildContext context) {
  var _questions = [{

      'questionText': 'Q1. Being able to keep busy all the time',
      'answers': [
        {'text': 'Very Dissatisfied', 'score': -2},
        {'text': 'Dissatisfied', 'score': -2},
        {'text': 'Neutral', 'score': 10},
        {'text': 'Satisfied', 'score': -2},
        {'text': 'Very Satisfied', 'score': -2},
      ],
    },

    {
      'questionText': 'Q2. What is Flutter?',
      'answers': [
        {'text': 'Android Development Kit', 'score': -2},
        {'text': 'IOS Development Kit', 'score': -2},
        {'text': 'Web Development Kit', 'score': -2},
        {'text':
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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('MSQ Mobile Application'),
          backgroundColor: Colors.yellow[700],
          leading: IconButton(
            onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => const HomePage()));
            },
          icon: const Icon(Icons.arrow_back_rounded,
          size: 20,
          color: Colors.white,
          ),
        ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz),
        ),
      ),

      debugShowCheckedModeBanner: false,
    );
  }
}