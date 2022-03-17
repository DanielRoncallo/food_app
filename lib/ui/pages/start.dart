// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:food_app/ui/pages/login.dart';
import 'package:food_app/ui/pages/sign_up.dart';
import 'package:food_app/ui/utils/color_unit.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(ColorWidgetSet().colorBackground),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(
            left: 47,
            right: 27,
            top: 43,
            bottom: 80,
          ),
          child: Column(
            children: [
              Image.asset('images/logo.png'),
              const SizedBox(height: 80.36),
              // ignore: prefer_const_constructors
              SizedBox(
                // ignore: prefer_const_constructors
                child: Text(
                  "Los pedidos nunca fueron tan faciles",
                  textAlign: TextAlign.center,
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    // ignore: prefer_const_constructors
                    color: Color(0xff010101),
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 80.36),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // ignore: avoid_print
                      print("Tapped a Container");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: Container(
                      width: 270,
                      height: 56.46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xFF0097A7),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Iniciar sesión',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40.36),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // ignore: avoid_print
                      print("Tapped a Container");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage()),
                      );
                    },
                    child: Container(
                      width: 270,
                      height: 56.46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xFF0097A7),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          // ignore: prefer_const_constructors

                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Registrarse',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
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
