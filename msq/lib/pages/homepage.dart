import 'package:flutter/material.dart';
import 'package:msq/main.dart';
import 'package:msq/pages/quiz_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.yellow[700],
      ),

      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[

                  const SizedBox(
                  height: 30,
                  ),

                  const Text(
                    "MSQ Mobile App",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 33,
                    ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    
                    Text("Minnesota Satisfaction Questionnaire",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                      ),
                      ),
                ],
              ),

                Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/login.png")
                  )
                ),
              ),

                  // start button
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 70,
                    onPressed: (){
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => const QuizScreen()));
                    },

                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(20)
                    ),

                    child: const Text("Start",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                    ),

                  ),

                  const SizedBox(
                  height: 10,
                  ),

                  // MaterialButton(
                  //   minWidth: double.infinity,
                  //   height: 70,
                  //   onPressed: (){
                  //     Navigator.push(
                  //       context, MaterialPageRoute(
                  //         builder: (context) => const QuizScreen()));
                  //   },

                  //   shape: RoundedRectangleBorder(
                  //     side: const BorderSide(
                  //       color: Colors.black
                  //     ),
                  //     borderRadius: BorderRadius.circular(20)
                  //   ),

                  //   child: const Text("History",
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.w600,
                  //     fontSize: 20,
                  //   ),
                  //   ),   
                  // ),
              
              //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
              FloatingActionButton(
                backgroundColor: Colors.yellow[700],
                foregroundColor: Colors.black,
                
                onPressed: () {Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => const Index()));},
                hoverColor: Colors.blue,
                child: const Icon(Icons.logout_rounded,
                ),

              ),
            ],
                  
          ),
        ),
      ),
      );
    
  }
}