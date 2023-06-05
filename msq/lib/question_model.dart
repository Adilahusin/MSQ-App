import 'package:flutter/material.dart';
import 'package:msq/question_data.dart';

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  final List<Map<String, Object>> _questions = questions ;
  var questionIndex;
  var totalScore;

  @override
  void initState() {
    super.initState();
    
    questionIndex = 0;
    totalScore = 0;
  }

  void answerQuestion(int score) {
    setState(() {
      totalScore += score;
      questionIndex++;
    });
  }

  void submitQuiz() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Quiz Result'),
          content: Text('Your total score is $totalScore.'),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('MSQ Mobile Application'),
          backgroundColor: Colors.yellow[700],
          leading: IconButton(
            onPressed: (){
            Navigator.pop(context);
            },
          icon: const Icon(Icons.arrow_back_rounded,
          size: 20,
          color: Colors.white,
          ),
        ),
        ),
      body: questionIndex < questions.length
          ? Column(
              children: [
                Text(
                  questions[questionIndex]['questionText'] as String,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),

                const SizedBox(height: 20),
                ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
                  return GestureDetector(
                onTap: () {
                  answerQuestion(answer['score'] as int);
                  print(answer['score']);
                  // add the response to database here
                },
                
                child: Center(
                  child: Container(
                    height: 40,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                        Color.fromARGB(255, 241, 189, 3),
                        Color.fromARGB(255, 227, 223, 117)
                      ])
                    ),
                    width: MediaQuery.of(context).size.width * 0.9, // Set width to 90% of screen width
                    margin: const EdgeInsets.symmetric(vertical: 10), // Add vertical spacing of 10 units
                    child: Center(child: Text(answer['text'] as String)),
                  ),
                ),
              );}),

              const SizedBox(height: 20),
               
              ],
            )
          : 
          
          Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Quiz Completed!',
                    style: TextStyle(fontSize: 24),
                  ),
                  
                  Text(
                    'Your Score : ${totalScore.toString()}',
                    style: const TextStyle(fontSize: 24),
                  ),

                ],
              ),
            ),
    );
  }
}


  

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: const Text('MSQ Mobile Application'),
//           backgroundColor: Colors.yellow[700],
//           leading: IconButton(
//             onPressed: (){
//             Navigator.push(
//               context, MaterialPageRoute(
//                 builder: (context) => const HomePage()));
//             },
//           icon: const Icon(Icons.arrow_back_rounded,
//           size: 20,
//           color: Colors.white,
//           ),
//         ),
//         ),

//         body: Padding(
//           padding: const EdgeInsets.all(30.0),
//           child: _questionIndex < _questions.length
//               ? Quiz(
//                   answerQuestion: _answerQuestion,
//                   questionIndex: _questionIndex,
//                   questions: _questions,
//                 )
//               : Result(_totalScore, _resetQuiz),
//         ),
//       ),

//       //debugShowCheckedModeBanner: false,
//     );
//   }
// }