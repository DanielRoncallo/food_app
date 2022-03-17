// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/ui/pages/ordenVentanas/orden_detalles.dart';

class OrdenLista extends StatefulWidget {
  const OrdenLista({Key? key}) : super(key: key);

  // ignore: use_key_in_widget_constructors

  @override
  OrdenListaState createState() => OrdenListaState();
}

class OrdenListaState extends State<OrdenLista> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.rotate(
          angle: 1.57,
          child: Container(
            width: 39,
            height: 2,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xff9f9898),
                width: 1,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          width: 333,
          height: 74,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Positioned(
                left: 8,
                top: 13,
                child: SizedBox(
                  width: 36,
                  height: 40,
                  child: Text(
                    "14 mayo",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 59,
                top: 8,
                child: SizedBox(
                  width: 129,
                  height: 14,
                  child: Text(
                    "Nombre Restaurante",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 60,
                top: 30,
                child: SizedBox(
                  width: 131,
                  height: 15,
                  child: Text(
                    "Numero de orden: xxxxxxxx",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 60,
                top: 45,
                child: SizedBox(
                  width: 120,
                  height: 15,
                  child: Text(
                    "Num. ordenes\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 220,
                top: 27,
                child: ButtonTheme(
                  minWidth: 91.0,
                  height: 14.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffffb700),
                        fixedSize: const Size(110, 5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrdenDetalles()),
                      );
                    },
                    child: Text("Preparando"),
                  ),
                ),
              ),
              /* SizedBox(
                  width: 91,
                  height: 14,
                  child: Text(
                    "Preparando",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                ),
              ), */
              Positioned(
                left: 275,
                top: 10,
                child: SizedBox(
                  width: 66,
                  height: 21,
                  child: Text(
                    "\$x.00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
