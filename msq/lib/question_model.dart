import 'package:flutter/material.dart';
import 'package:msq/main.dart';
import 'package:msq/pages/login.dart';
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
          title: const Text('MSQ Mobile Application',
          style: TextStyle(color: Colors.black),
          ),

          backgroundColor: Colors.yellow[700],
          automaticallyImplyLeading: false,
          
           actions: <Widget>[

          IconButton(icon: const Icon(Icons.logout_rounded),
          onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const LoginPage()));
            }
            ),
        ],
      ),

      body: questionIndex < questions.length
          ? Column(
              children: [
                const SizedBox(
                  height:50,
                ),
                
                Center(
                child: Text(
                  questions[questionIndex]['questionText'] as String,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                ),
                ),

                const SizedBox(height: 30),

                ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
                  return GestureDetector(
                    onTap: () {
                      answerQuestion(answer['score'] as int);
                      print(answer['score']);
                  // add the response to database here
                },
                
                // Answer choices UI
                child: Center(
                  child: Container(
                    height: 40,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                        Color.fromARGB(255, 251, 192, 42),
                        Color.fromARGB(255, 247, 204, 96),
                      ])
                    ),
                    
                    width: MediaQuery.of(context).size.width * 0.9, // Set width to 90% of screen width
                    margin: const EdgeInsets.symmetric(vertical: 10), // Add vertical spacing of 10 units
                    child: Center(child: Text(answer['text'] as String)),
                  ),
                ),
              );
              }),

              const SizedBox(height: 20),
              ],
            )
          : 
          
          // Result UI
          Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Quiz Completed!',
                    style: TextStyle(fontSize: 24),
                  ),

                  const SizedBox(height: 20),

                    const Text(
                        'Your score is :',
                        style: TextStyle(fontSize: 20),
                     ),

                     const SizedBox(height: 10),

                    Text(
                      '${totalScore.toString()}/100',
                        style: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                        

                  const SizedBox(height: 20),

                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.yellow.shade700),
                    ),
                    child: const Text(
                        "75 or higher - High level of satisfaction\n"
                        "26 - 74 - Average level of satisfaction\n"
                        "25 or lower - Medium level of satisfaction",
                        style: TextStyle(fontSize: 16),
                    ),
                  ),

                  const SizedBox(height: 20),

            // Restart Button
            TextButton(
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Index()));
              },

            child: Container(
              color: Colors.yellow[700],
              padding: const EdgeInsets.all(14),
              child: const Text(
                'Restart Quiz',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15
              ),
            ),
          ),
          ),

                ],
              ),
            ),
    );
  }
}