import 'package:flutter/material.dart';
import 'package:msq/pages/admin_login.dart';
import 'package:msq/pages/guidelines.dart';
import 'package:msq/pages/login.dart';
import 'package:msq/pages/tati_info.dart';

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
          iconSize: 30,
          onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => const AdminLogin()));
                    },
          ),

          IconButton(icon: Image.asset('assets/tati.png'),
          onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => const TatiInfo()));
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[

                  const SizedBox(
                  height: 10,
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

              const SizedBox(
                height: 10,
              ),

              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/login.png")
                  )
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Column(
                children: <Widget>[

                  // start button
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 50,
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

                    child: const Text("Login",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    ),
                  ),

                  const SizedBox(
                  height: 20,
                  ),

                  MaterialButton(
                    minWidth: double.infinity,
                    height: 50,
                    onPressed: (){
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => const Guidelines()));
                    },

                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),

                    child: const Text("Guidelines",
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
