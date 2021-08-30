import 'package:brew_crew/screens/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        actions: [],
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign in to Brew Crew'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
        child: ElevatedButton(
          child: Text('Sign In Anonymous'),
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if (result == null) {
              print('erros sign in ');
            } else {
              print('signed in ');
              print(result);
            }
          },
        ),
      ),
    );
  }
}
