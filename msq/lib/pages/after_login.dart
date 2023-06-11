import 'package:flutter/material.dart';
import 'package:msq/pages/homepage.dart';
import 'package:msq/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class afterLogin extends StatefulWidget {
  const afterLogin({Key? key}) : super(key: key);

  @override
  State<afterLogin> createState() => _afterLoginState();
}

class _afterLoginState extends State<afterLogin> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
            body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomePage();
          }else{
            return const LoginPage();
          }
        },
        ),
    );
    
  }
}