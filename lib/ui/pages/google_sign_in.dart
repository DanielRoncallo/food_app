import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInButton extends StatefulWidget {
   @override
  _GoogleSignInButtonInState createState() => _GoogleSignInButtonInState();
}

class _GoogleSignInButtonInState extends State<GoogleSignInButton> {
  @override
  Widget build(BuildContext context) {
    // we return the MaterialApp here ,
    // MaterialApp contain some basic ui for android ,
    return Scaffold(
      appBar: AppBar(
        title: Text('gooogle'),
      ),
      body: Center(
        child: FloatingActionButton.extended(
            onPressed: () {
               GoogleSignIn().signIn();
            },
            icon: Image.asset(
              'images/google.png',
              height: 32,
              width: 32,
            ),
            label: Text('sign google'),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black),
      ),
    );
  }
}
