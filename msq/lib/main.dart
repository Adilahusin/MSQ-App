import 'package:flutter/material.dart';
import 'package:msq/pages/admin_login.dart';
import 'package:msq/pages/login.dart';
import 'package:msq/pages/info.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Index(),
  ));
}

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        actions: <Widget>[

          IconButton(icon: const Icon(Icons.person),
          onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => const AdminLogin()));
                    },
          ),

          IconButton(icon: const Icon(Icons.info),
          onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => const InfoPage()));
                    },
          ),

        ],
      ),
      
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[

            //   Column(
            //   children: [
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.end,
            //       children: [
            //         Image.asset(
            //             'assets/tati.png',
            //             width: 50,
            //             height: 70,
            //         ),
            //       ],
            //     ),
            //    ],
            // ),

                // Container(
                // decoration: const BoxDecoration(
                //   image: DecorationImage(
                //     image: AssetImage("assets/tati.png",
                //     ),
                //     ),
                //   ),
                // ),

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

              Column(
                children: <Widget>[

                  // start button
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => const LoginPage()));
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
                      fontSize: 18,
                    ),
                    ),

                  ),
                ],
              ),

            ],
          ),
        ),
      ),
      );
    
  }
}
