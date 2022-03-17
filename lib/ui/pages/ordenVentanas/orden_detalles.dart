// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/ui/pages/ordenVentanas/rastreo_order.dart';
import 'package:food_app/ui/utils/color_unit.dart';

class OrdenDetalles extends StatefulWidget {
  OrdenDetalles({Key? key}) : super(key: key);

  @override
  _OrdenDetallesState createState() => _OrdenDetallesState();
}

class _OrdenDetallesState extends State<OrdenDetalles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Mis ordenes'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              children: [
                const SizedBox(
                  height: 20,
                  width: 20,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(ColorWidgetSet().colorDrawer),
                          ),
                        ),
                        SizedBox(
                          width: 70,
                          height: 60,
                          child: Text(
                            "Orden Hecha\n4 pm",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(ColorWidgetSet().colorDrawer),
                          ),
                        ),
                        SizedBox(
                          width: 70,
                          height: 60,
                          child: Text(
                            "Preparando\n4 pm",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(ColorWidgetSet().colorDrawer),
                          ),
                        ),
                        SizedBox(
                          width: 70,
                          height: 60,
                          child: Text(
                            "Orden Lista\n4 pm",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(ColorWidgetSet().colorDrawer),
                          ),
                        ),
                        SizedBox(
                          width: 70,
                          height: 60,
                          child: Text(
                            "En camino\n4 pm",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(ColorWidgetSet().colorDrawer),
                          ),
                        ),
                        SizedBox(
                          width: 70,
                          height: 60,
                          child: Text(
                            "Entregado\n4 pm",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 430,
                  height: 855,
                  color: Color(0xff9a9292),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 62,
                        child: Container(
                          width: 430,
                          height: 100,
                          color: Colors.white,
                          padding: const EdgeInsets.only(
                            left: 25,
                            right: 16,
                            top: 22,
                            bottom: 24,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              SizedBox(
                                width: 345,
                                height: 28,
                                child: Text(
                                  "Nombre restaurante",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 389,
                                height: 26,
                                child: Text(
                                  "Direccion",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 22,
                        top: 357,
                        child: Container(
                          width: 346,
                          height: 343,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    width: 346,
                                    height: 84,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(0),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                      color: Color(0xffc4c4c4),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 346,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(0),
                                      ),
                                      color: Color(0xffc4c4c4),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                top: 10,
                                child: SizedBox(
                                  width: 190,
                                  height: 53,
                                  child: Text(
                                    "Lista de productos",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 165,
                                top: 24,
                                child: SizedBox(
                                  width: 112,
                                  height: 47,
                                  child: Text(
                                    "Cantidad",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                top: 94,
                                child: SizedBox(
                                  width: 147,
                                  height: 35,
                                  child: Text(
                                    "Burger",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 21,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 304,
                                top: 25,
                                child: SizedBox(
                                  width: 17,
                                  height: 31,
                                  child: Text(
                                    "\$",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 200,
                                top: 100,
                                child: SizedBox(
                                  width: 36,
                                  height: 29,
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 21,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 259,
                                top: 99,
                                child: SizedBox(
                                  width: 80,
                                  height: 23,
                                  child: Text(
                                    "\$ 20.00",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 21,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 159,
                                top: 272,
                                child: SizedBox(
                                  width: 173,
                                  height: 29,
                                  child: Text(
                                    "Envio:       \$x.00",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 159,
                                top: 301,
                                child: SizedBox(
                                  width: 176,
                                  height: 21,
                                  child: Text(
                                    "Total:        \$x.00",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 22,
                        top: 741,
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            ButtonTheme(
                              minWidth: 330.0,
                              height: 37.0,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffffb700),
                                  fixedSize: const Size(350, 10),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RastreoOrdern()),
                                  );
                                },
                                child: Text("Preparando"),
                              ),
                            ),
                            /* SizedBox(
                              width: 330,
                              height: 37,
                              child: Text(
                                "Rastrear Orden",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xffd5c1c1),
                                  fontSize: 36,
                                ),
                              ),
                            ), */
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
