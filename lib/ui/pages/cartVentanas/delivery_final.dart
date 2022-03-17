// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:food_app/ui/pages/ordenVentanas/orders.dart';

class DeliveryFinal extends StatefulWidget {
  DeliveryFinal({Key? key}) : super(key: key);

  @override
  State<DeliveryFinal> createState() => _DeliveryFinalState();
}

class _DeliveryFinalState extends State<DeliveryFinal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Final'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              children: [
                Image.asset(
                  'images/bike.jpg',
                  fit: BoxFit.cover,
                ),
                Text(
                  'Gracias NOMBRE por la compra',
                  textAlign: TextAlign.center,
                ),
                Container(
                  child: Container(
                    width: 342,
                    height: 139,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: Stack(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Positioned(
                          left: 17,
                          top: 16,
                          child: SizedBox(
                            width: 200,
                            height: 35,
                            child: Text(
                              "Numero de orden: xxxxxxx",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        // ignore: prefer_const_constructors
                        Positioned(
                          left: 20,
                          top: 54,
                          // ignore: prefer_const_constructors
                          child: SizedBox(
                            width: 300,
                            height: 34,
                            child: Text(
                              "Direccion xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          top: 89,
                          child: SizedBox(
                            width: 300,
                            height: 17,
                            child: Text(
                              "Precio:  \$x.00",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          top: 120,
                          child: SizedBox(
                            width: 300,
                            height: 17,
                            child: Text(
                              "Medio de pago:  Efectivo",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Orders()),
                        );
                      },
                      child: const Text('Mis ordenes'),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          fixedSize: const Size(240, 50),
                          primary: Colors.deepOrange),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
