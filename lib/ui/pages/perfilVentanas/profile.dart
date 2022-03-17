// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/ui/pages/cartVentanas/payment_method.dart';
import 'package:food_app/ui/pages/perfilVentanas/ajustes.dart';
import 'package:food_app/ui/pages/perfilVentanas/editar_perfil.dart';
import 'package:food_app/ui/widgets/color_drawer.dart';
import 'package:food_app/ui/utils/color_unit.dart';
import 'package:food_app/ui/pages/start.dart';

import '../ordenVentanas/orders.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //backgroundColor: Color(ColorWidgetSet().colorBackground),
          ),
      drawer: ColorDrawer(),
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(ColorWidgetSet().colorBackground),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: 114,
            height: 50,
          ),
          Container(
            width: 231,
            height: 208,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffc4c4c4),
            ),
            child: Center(
                child: Text("Aqui va foto de perfil",
                    style: TextStyle(fontSize: 20))),
          ),
          SizedBox(
            width: 114,
            height: 50,
          ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: TextButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditarPerfil()),
                              );
                            },
                            icon: const Icon(
                              Icons.account_circle,
                              color: Colors.black,
                            ),
                            label: const Text(
                              'Editar perfil',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ))),
                    SizedBox(height: 25),
                    Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: TextButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Ajustes()),
                              );
                            },
                            icon: const Icon(
                              Icons.settings,
                              color: Colors.black,
                            ),
                            label: const Text(
                              'Ajustes',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ))),
                    SizedBox(height: 25),
                    Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: TextButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PaymentMethod()),
                              );
                            },
                            icon: const Icon(
                              Icons.credit_card,
                              color: Colors.black,
                            ),
                            label: const Text(
                              'Metodo de pago',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ))),
                    SizedBox(height: 25),
                    Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: TextButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Orders()),
                              );
                            },
                            icon: const Icon(
                              Icons.checklist,
                              color: Colors.black,
                            ),
                            label: const Text(
                              'Historial de pedidos',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ))),
                    SizedBox(height: 25),
                    Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: TextButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyHomePage()),
                              );
                            },
                            icon: const Icon(
                              Icons.logout,
                              color: Colors.red,
                            ),
                            label: const Text(
                              'Salir de la cuenta',
                              style: TextStyle(fontSize: 18, color: Colors.red),
                            ))),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
