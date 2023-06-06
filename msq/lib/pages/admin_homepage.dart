import 'package:flutter/material.dart';
import 'package:msq/main.dart';
import 'package:msq/pages/admin_login.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({Key? key}) : super(key: key);

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
          onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => const Index()));
                    },
          ),
        ],

      ),

      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[

                  const SizedBox(
                  height: 20,
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
                  height: 50,
                  ),


                  // start button
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 70,
                    onPressed: (){
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) =>  const AdminLogin()));
                    },

                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),

                    child: const Text("Update Questions",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                    ),
                  ),

                  const SizedBox(
                  height: 20,
                  ),

                  MaterialButton(
                    minWidth: double.infinity,
                    height: 70,
                    onPressed: (){
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => const AdminLogin()));
                    },

                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),

                    child: const Text("Update Remarks",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                    ),   
                  ),
                  
                  const SizedBox(
                  height: 20,
                  ),

                  MaterialButton(
                    minWidth: double.infinity,
                    height: 70,
                    onPressed: (){
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) =>  const AdminLogin()));
                    },

                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),

                    child: const Text("View Record",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                    ),   
                  ),
                          
                          ],
                  
          ),
        ),
      ),
      );
    
  }
}