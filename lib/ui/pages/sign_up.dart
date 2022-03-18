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

  final TextEditingController _userController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  late bool _passwordVisible;
  bool _isLoading = false;
  @override
  //método dispose utilizado para liberar la memoria asignada a las variables cuando se elimina el objeto de estado.
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _userController.dispose();
    _passController.dispose();
  }

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  void signUpUser() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().signUpUser(
      email: _emailController.text,
      password: _passController.text,
      username: _userController.text,
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
    setState(() {
      _isLoading = false;
    });
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
                                controller: _emailController,
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
                                controller: _userController,
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
                                controller: _passController,
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
                            InkWell(
                              onTap: signUpUser,
                              child: Container(
                                child: _isLoading
                                    ? const Center(
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                        ),
                                      )
                                    : const Text('sign up'),
                                width: double.infinity,
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                decoration: const ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
                                  ),
                                  color: Color.fromRGBO(0, 149, 246, 1),
                                ),
                              ),
                            ),
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
}
