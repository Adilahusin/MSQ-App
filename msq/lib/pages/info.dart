import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

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
          color: Colors.black,
          ),
        ),
      ),

      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(30, 50, 30, 50),
        child: const Text(
        "Minnesota Satisfaction Questionnaire (MSQ) is designed to measure an employee's satisfaction with their job. It provides more specific information on the aspects of a job that an individual finds rewarding than do more general measures of job satisfaction.",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600
        ),
      ),
    ),
      ),

    );
  }
}
