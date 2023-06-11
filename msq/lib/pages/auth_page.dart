import 'package:flutter/material.dart';
import 'package:msq/pages/login.dart';
import 'package:msq/main.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){

        // When user is logged in
        if (snapshot.hasData){
          return const Index();
        }

        // When user is not logged in
        else {
          return const LoginPage();
        }
        },
      ),
    );
  }
}