// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:food_app/ui/pages/login_controller.dart';
import 'package:get/get.dart';

class EditarPerfil extends StatefulWidget {
  EditarPerfil({Key? key}) : super(key: key);

  @override
  State<EditarPerfil> createState() => _EditarPerfilState();
}

class _EditarPerfilState extends State<EditarPerfil> {
  // ignore: prefer_final_fields
  var controller = Get.put(LoginController());

  final _nombreController = TextEditingController(text: 'dasda');

  @override
  void dispose() {
    // Limpia el controlador cuando el widget se elimine del árbol de widgets
    //_nombreController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //backgroundColor: Color(ColorWidgetSet().colorBackground),
          ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: ListView(
              children: [
                Container(
                  width: 414,
                  color: Color(0xffff7a00),
                  padding: const EdgeInsets.only(
                    left: 36,
                    right: 35,
                    top: 66,
                    bottom: 186,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 231,
                        height: 208,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffc4c4c4),
                        ),
                        child: CircleAvatar(
                          backgroundImage: Image.network(
                                  controller.googleAccount.value?.photoUrl ??
                                      '')
                              .image,
                          radius: 100,
                        ),
                      ),
                      SizedBox(height: 29.75),
                      GestureDetector(
                        onTap: () {
                          print("Container clicked");
                        },
                        child: Container(
                          width: 414.0,
                          height: 69,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextButton(
                            onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('AlertDialog Title'),
                                content: Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: <Widget>[
                                    Expanded(
                                      child: TextField(
                                        autofocus: true,
                                        decoration: InputDecoration(
                                            labelText: 'Full Name',
                                            hintText: 'eg. John Smith'),
                                      ),
                                    )
                                  ],
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'Cancel'),
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween, // ignore: prefer_const_literals_to_create_immutables
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text(
                                      "Nombre",
                                      textAlign: TextAlign.right,
                                    ),
                                    Text(
                                      controller.googleAccount.value
                                              ?.displayName ??
                                          '',
                                      textAlign: TextAlign.left,
                                    ),
                                    Icon(Icons.edit),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 29.75),
                      GestureDetector(
                        onTap: () {
                          print("Container clicked");
                        },
                        child: Container(
                          width: 414.0,
                          height: 69,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextButton(
                            onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('AlertDialog Title'),
                                content: const Text('AlertDialog description'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'Cancel'),
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            ),
                            child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Text(
                                        "Contraseña",
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        "Ableitungen",
                                        textAlign: TextAlign.right,
                                      ),
                                      Icon(Icons.edit),
                                    ],
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(height: 29.75),
                      GestureDetector(
                        onTap: () {
                          print("Container clicked");
                        },
                        child: Container(
                          width: 414.0,
                          height: 69,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextButton(
                            onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('AlertDialog Title'),
                                content: const Text('AlertDialog description'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'Cancel'),
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            ),
                            child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Text(
                                        "Telefono",
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        "Ableitungen",
                                        textAlign: TextAlign.right,
                                      ),
                                      Icon(Icons.edit),
                                    ],
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(height: 29.75),
                      GestureDetector(
                        onTap: () {
                          print("Container clicked");
                        },
                        child: Container(
                          width: 414.0,
                          height: 69,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextButton(
                            onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('AlertDialog Title'),
                                content: const Text('AlertDialog description'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'Cancel'),
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            ),
                            child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Text(
                                        "Email",
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        controller.googleAccount.value
                                                ?.displayName ??
                                            '',
                                        textAlign: TextAlign.left,
                                      ),
                                      Icon(Icons.edit),
                                    ],
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(height: 29.75),
                      ElevatedButton(
                        onPressed: () {
                          /* Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DeliveryAddress()),
                    ); */
                        },
                        child: const Text('Guardar'),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            fixedSize: const Size(240, 20),
                            primary: Colors.deepOrange),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
