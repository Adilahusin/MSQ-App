import 'package:flutter/material.dart';
import 'package:msq/main.dart';
import 'package:msq/pages/homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: const Icon(Icons.arrow_back_rounded),
          onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => const Index()));
                    },
          ),
      ),

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const Text("Login",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    Text("Login to your account",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700]
                    ),
                    ),
                  ],
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        inputFile(label:"Email"),
                        inputFile(label:"Password", obscureText: true),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      padding: const EdgeInsets.only(top: 0, left: 0),
                      decoration: 
                      BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: const Border(
                          bottom: BorderSide(color: Colors.black),
                          top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                          ),
                      ),

                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => const HomePage()));},
                        color: const Color(0xff0095FF),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),

                        child: const Text("Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
                          ),
                          ),

                      ),
                    ),
                  ),


                  Container(
                    padding: const EdgeInsets.only(top:100),
                    height: 220,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/login.png"),
                        fit: BoxFit.fitHeight
                      ),
                    ),
                  ),

              ],
            ),
            ),
          ],
        ),
      ),

    );
    
  }
}

// Widgets for textField
Widget inputFile({label, obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black87,
        ),
        ),

        TextField(
          obscureText: obscureText,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey
                ),

              ),

              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey
                  ),
              )

          ),
        ),

        const SizedBox(height: 10),
    ],
  );
  
}