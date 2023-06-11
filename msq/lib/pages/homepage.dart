import 'package:flutter/material.dart';
import 'package:msq/main.dart';
import 'package:msq/question_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.yellow[700],

        actions: <Widget>[

          IconButton(icon: const Icon(Icons.logout_rounded),
          onPressed: () {
            Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Index()));
          },
          ),
        ],
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

                  const SizedBox(height: 20),

                  const Text(
                    "Signed in",
                    ),

                    const SizedBox(height: 10),

                  const Text(
                    "MSQ Mobile App",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 33,
                    ),
                    ),
                    
                    const SizedBox(height: 20),
                    
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
                height: MediaQuery.of(context).size.height / 4,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/1.png")
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
                          builder: (context) =>  QuizApp()));
                    },

                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),

                    child: const Text("Start",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                    ),

                  ),

                  const SizedBox(height: 10),
                  
          ],
                  
          ),
        ),
      ),
      );
    
  }
}