import 'package:flutter/material.dart';

class Guidelines extends StatefulWidget {
  const Guidelines({Key? key}) : super(key: key);

  @override
  State<Guidelines> createState() => _GuidelinesState();
}

class _GuidelinesState extends State<Guidelines> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
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

      body: Container(
            padding: const EdgeInsets.fromLTRB(30, 50, 30, 50),
            alignment: Alignment.center,
            child: Column(
              children: const [
                Text.rich(
                  style: TextStyle(color: Colors.black), //style for all textspan
                  TextSpan(
                     children: [ 
                         TextSpan(text:"This is an adaptation of the short MSQ test. The test instructions are as follows:\n\n\n",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                         
                         TextSpan(text:"1) There are 20 items that need to be answered.\n\n ",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          )),

                          TextSpan(text:"2) For each item, please read the statement that represents an aspect of your current job/career. \n\n ",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          )),

                          TextSpan(text:"3) Evaluate the aspect according to your satisfaction and choose the most appropriate satisfaction level using the Likert scale.\n\n ",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          )),
                        
                     ]
                  )
                ),
              ],
      
    

      ),
    ),

    );
  }
}
