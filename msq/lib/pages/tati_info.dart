import 'package:flutter/material.dart';

class TatiInfo extends StatefulWidget {
  const TatiInfo({Key? key}) : super(key: key);

  @override
  State<TatiInfo> createState() => _TatiInfoState();
}

class _TatiInfoState extends State<TatiInfo> {
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

     body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
            
              // Container(
              //   decoration: const BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage("assets/tati 30.png")
              //     )
              //   ),
              // ),


               Text.rich(
                  style: TextStyle(color: Colors.black), //style for all textspan
                  TextSpan(
                     children: [ 
                         TextSpan(text:"Vision:\n",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                         
                         TextSpan(text:"To be an excellent technology based educational institution and to nurture future leaders.\n\n ",
                          style: TextStyle(fontSize: 20,
                          )),

                          TextSpan(text:"Mission:\n",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          )),

                          TextSpan(text:"To provide high-quality student-centered education and produced holistic talents with strong technological and leadership skills.\n\n ",
                          style: TextStyle(fontSize: 20,
                          )),

                          TextSpan(text:"Motto:\n",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          )),

                          TextSpan(text:" Inspiring Future Leaders\n\n ",
                          style: TextStyle(fontSize: 20,
                          )),
                     ]
                  ),
                ),

              ],
            ),
          ),

    ),
    );
  }
}
