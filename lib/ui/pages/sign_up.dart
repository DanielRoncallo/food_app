import 'package:flutter/material.dart';
import 'package:food_app/data/repositories/auth_methods.dart';

import 'package:food_app/ui/utils/color_unit.dart';
import 'package:food_app/ui/pages/perfilVentanas/profile.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  //FirebaseController fc = Get.find();

  var userController = TextEditingController();
  var emailController = TextEditingController();
  var passController = TextEditingController();
  late bool _passwordVisible;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(ColorWidgetSet().colorBackground),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('images/logo.png'),
          Expanded(
              flex: 3,
              child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Form(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: emailController,
                                decoration: InputDecoration(
                                    labelText: 'Correo electrónico',
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: userController,
                                decoration: InputDecoration(
                                    labelText: 'Nombre de usuario',
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: passController,
                                decoration: InputDecoration(
                                  labelText: 'Contraseña',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                  ),
                                ),
                                obscureText: !_passwordVisible,
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  //signUpUser;
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    side: const BorderSide(
                                        color: Color(0xff5727bf))),
                                child: const Text(
                                  'Registrarse',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                )),
                          ],
                        )),
                        TextButton(
                            onPressed: () {},
                            child: const Text('Ya tengo una cuenta',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black)))
                      ],
                    ),
                  )))
        ],
      ),
    );
  }

  /* void signUpUser() async {
     
    String res = await AuthMethods().signUpUser(
      email: emailController.text,
      password: passController.text,
      username: userController.text,
     
    );
    if (res != 'Exito') {
       showSnackbar(res, context);
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const Profile(),
          
        ),
      );
    }
     
  } */
}
