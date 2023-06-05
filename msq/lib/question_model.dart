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
        {'text': 'Very Dissatisfied', 'score': 1},
        {'text': 'Dissatisfied', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Satisfied', 'score': 4},
        {'text': 'Very Satisfied', 'score': 5},
      ],
    },

    {
      'questionText': 'Q2. The chance to work alone on the job',
      'answers': [
        {'text': 'Very Dissatisfied', 'score': 1},
        {'text': 'Dissatisfied', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Satisfied', 'score': 4},
        {'text': 'Very Satisfied', 'score': 5},
      ],
    },

    {
      'questionText': ' Q3. The chance to do different things from time to time',
      'answers': [
        {'text': 'Very Dissatisfied', 'score': 1},
        {'text': 'Dissatisfied', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Satisfied', 'score': 4},
        {'text': 'Very Satisfied', 'score': 5},
      ],
    },

    {
      'questionText': 'Q4. The chance to be "somebody" in the community',
      'answers': [
        {'text': 'Very Dissatisfied', 'score': 1},
        {'text': 'Dissatisfied', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Satisfied', 'score': 4},
        {'text': 'Very Satisfied', 'score': 5},
      ],
    },

    {
      'questionText':
          'Q5. The way my boss handles his/her workers',
      'answers': [
        {'text': 'Very Dissatisfied', 'score': 1},
        {'text': 'Dissatisfied', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Satisfied', 'score': 4},
        {'text': 'Very Satisfied', 'score': 5},
      ],
    },

    {
      'questionText':
          'Q6. The competence of my supervisor in making decisions',
      'answers': [
        {'text': 'Very Dissatisfied', 'score': 1},
        {'text': 'Dissatisfied', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Satisfied', 'score': 4},
        {'text': 'Very Satisfied', 'score': 5},
      ],
    },

    {
      'questionText':
          'Q7. Being able to do things that do not go against my conscience',
      'answers': [
        {'text': 'Very Dissatisfied', 'score': 1},
        {'text': 'Dissatisfied', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Satisfied', 'score': 4},
        {'text': 'Very Satisfied', 'score': 5},
      ],
    },

    {
      'questionText':
          'Q8. The way my job provides for steady employment',
      'answers': [
        {'text': 'Very Dissatisfied', 'score': 1},
        {'text': 'Dissatisfied', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Satisfied', 'score': 4},
        {'text': 'Very Satisfied', 'score': 5},
      ],
    },

    {
      'questionText':
          'Q9. The chance to do things for other people',
      'answers': [
        {'text': 'Very Dissatisfied', 'score': 1},
        {'text': 'Dissatisfied', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Satisfied', 'score': 4},
        {'text': 'Very Satisfied', 'score': 5},
      ],
    },

    {
      'questionText':
          'Q10. The chance to tell people what to do',
      'answers': [
        {'text': 'Very Dissatisfied', 'score': 1},
        {'text': 'Dissatisfied', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Satisfied', 'score': 4},
        {'text': 'Very Satisfied', 'score': 5},
      ],
    },

    {
      'questionText':
          'Q11. The chance to do something that makes use of my abilities',
      'answers': [
        {'text': 'Very Dissatisfied', 'score': 1},
        {'text': 'Dissatisfied', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Satisfied', 'score': 4},
        {'text': 'Very Satisfied', 'score': 5},
      ],
    },

    {
      'questionText':
          'Q12. The way company policies are put into practice',
      'answers': [
        {'text': 'Very Dissatisfied', 'score': 1},
        {'text': 'Dissatisfied', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Satisfied', 'score': 4},
        {'text': 'Very Satisfied', 'score': 5},
      ],
    },

    {
      'questionText':
          'Q13. My pay and the amount of work I do',
      'answers': [
        {'text': 'Very Dissatisfied', 'score': 1},
        {'text': 'Dissatisfied', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Satisfied', 'score': 4},
        {'text': 'Very Satisfied', 'score': 5},
      ],
    },

    {
      'questionText':
          'Q14. The chances for advancement on this job',
      'answers': [
        {'text': 'Very Dissatisfied', 'score': 1},
        {'text': 'Dissatisfied', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Satisfied', 'score': 4},
        {'text': 'Very Satisfied', 'score': 5},
      ],
    },

    {
      'questionText':
          'Q15. The freedom to use my own judgement',
      'answers': [
        {'text': 'Very Dissatisfied', 'score': 1},
        {'text': 'Dissatisfied', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Satisfied', 'score': 4},
        {'text': 'Very Satisfied', 'score': 5},
      ],
    },

    {
      'questionText':
          'Q16. The chance to try my own methods of doing the job',
      'answers': [
        {'text': 'Very Dissatisfied', 'score': 1},
        {'text': 'Dissatisfied', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Satisfied', 'score': 4},
        {'text': 'Very Satisfied', 'score': 5},
      ],
    },

    {
      'questionText':
          'Q17. The working conditions',
      'answers': [
        {'text': 'Very Dissatisfied', 'score': 1},
        {'text': 'Dissatisfied', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Satisfied', 'score': 4},
        {'text': 'Very Satisfied', 'score': 5},
      ],
    },

    {
      'questionText':
          'Q18. The way my co-workers get along with each other',
      'answers': [
        {'text': 'Very Dissatisfied', 'score': 1},
        {'text': 'Dissatisfied', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Satisfied', 'score': 4},
        {'text': 'Very Satisfied', 'score': 5},
      ],
    },

        {
      'questionText':
          'Q19. The praise I get for doing a good job',
      'answers': [
        {'text': 'Very Dissatisfied', 'score': 1},
        {'text': 'Dissatisfied', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Satisfied', 'score': 4},
        {'text': 'Very Satisfied', 'score': 5},
      ],
    },

        {
      'questionText':
          'Q20. The feeling of accomplishment I get from the job',
      'answers': [
        {'text': 'Very Dissatisfied', 'score': 1},
        {'text': 'Dissatisfied', 'score': 2},
        {'text': 'Neutral', 'score': 3},
        {'text': 'Satisfied', 'score': 4},
        {'text': 'Very Satisfied', 'score': 5},
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