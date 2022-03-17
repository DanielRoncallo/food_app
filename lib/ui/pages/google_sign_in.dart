import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_app/ui/pages/login_controller.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInButton extends StatefulWidget {
  @override
  _GoogleSignInButtonInState createState() => _GoogleSignInButtonInState();
}

class _GoogleSignInButtonInState extends State<GoogleSignInButton> {
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    // we return the MaterialApp here ,
    // MaterialApp contain some basic ui for android ,
    //cambiar el sign in en la carpeta apropiada
    return Center(child: Obx(() {
      if (controller.googleAccount.value == null) {
        return buildLogin();
      }else{
        return buildProfileView();
      }
  
    }));
  }

  Column buildProfileView() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [CircleAvatar(), Text('email'), Text('name')],
    );
    
  }

  FloatingActionButton buildLogin() {
    return FloatingActionButton.extended(
        onPressed: () {
          controller.login();
        },
        icon: Image.asset(
          'images/google.png',
          height: 32,
          width: 32,
        ),
        label: Text('sign google'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black);
  }
}
