import 'package:flutter/material.dart';
import 'package:food_app/ui/pages/home.dart';
import 'package:food_app/ui/utils/color_unit.dart';
import 'package:food_app/ui/pages/sign_up.dart';

import 'google_sign_in.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var userController = TextEditingController();
  var passController = TextEditingController();
  var email2Controller = TextEditingController();
  late bool _passwordVisible;
  late bool _loading;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
    _loading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          _loading ? Colors.white : Color(ColorWidgetSet().colorBackground),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Column(
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
              padding: const EdgeInsets.all(30.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //const Icon(Icons.directions_car_filled_rounded),
                    Form(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            key: const Key('email'),
                            controller: userController,
                            decoration: InputDecoration(
                                labelText: 'Correo electrónico',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            key: const Key('email'),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeStart()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  side: const BorderSide(
                                      color: Color(0xff5727bf))),
                              child: const Text(
                                'Iniciar sesión',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignUpPage()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  side: const BorderSide(
                                      color: Color(0xff5727bf))),
                              child: const Text(
                                'Registrarse',
                                style: TextStyle(
                                  color: Color(0xff5727bf),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>   GoogleSignInButton()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  side: const BorderSide(
                                      color: Color(0xff5727bf))),
                              child: const Text(
                                'Registrarse con google',
                                style: TextStyle(
                                  color: Color(0xff5727bf),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>   GoogleSignInButton()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  side: const BorderSide(
                                      color: Color(0xff5727bf))),
                              child: const Text(
                                'Registrarse con Facebook',
                                style: TextStyle(
                                  color: Color(0xff5727bf),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
                    TextButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return StatefulBuilder(
                                    builder: (context, setState) {
                                  return AlertDialog(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0))),
                                    title: const Text('Recuperar contraseña'),
                                    content: SingleChildScrollView(
                                        child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Form(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextFormField(
                                              controller: email2Controller,
                                              decoration: InputDecoration(
                                                  labelText:
                                                      'Correo electrónico',
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                    actionsAlignment: MainAxisAlignment.center,
                                    actions: <Widget>[
                                      ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0)),
                                              side: const BorderSide(
                                                  color: Color(0xff5727bf))),
                                          child: const Text(
                                            'Aceptar',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                            ),
                                          )),
                                    ],
                                  );
                                });
                              });
                        },
                        child: const Text('¿Olvidaste tu contraseña?',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black)))
                  ],
                ),
              ),
            ),
          )
        ],
      );
    }
  }
}
